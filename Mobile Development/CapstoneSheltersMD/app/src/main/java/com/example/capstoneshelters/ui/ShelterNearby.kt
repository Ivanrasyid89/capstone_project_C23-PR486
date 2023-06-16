package com.example.capstoneshelters.ui

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.view.View.GONE
import android.view.View.VISIBLE
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.ProgressBar
import android.widget.Toast
import com.example.capstoneshelters.databinding.ActivityShelterNearbyBinding
import androidx.constraintlayout.widget.R.layout.support_simple_spinner_dropdown_item
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.capstoneshelters.adapter.ShelterAdapter
import com.example.capstoneshelters.api.ApiConfig
import com.example.capstoneshelters.location.UserLocation
import com.example.capstoneshelters.mapsprivider.MapsActivity
import com.example.capstoneshelters.response.ShelterResponse
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ShelterNearby : AppCompatActivity(), View.OnClickListener {
    private lateinit var binding: ActivityShelterNearbyBinding
    private val option: List<String> = listOf("Anjing", "Kucing", "Lainnya")
    private lateinit var selectedOption: String
    private var show: Boolean = false
    private lateinit var listShelter: List<ShelterResponse>
    private lateinit var recyclerView: RecyclerView
    private lateinit var pBar: ProgressBar

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityShelterNearbyBinding.inflate(layoutInflater)
        setContentView(binding.root)
        supportActionBar?.hide()

        val adapter = ArrayAdapter(this, support_simple_spinner_dropdown_item, option)
        adapter.setDropDownViewResource(support_simple_spinner_dropdown_item)
        pBar = binding.progressBar

        recyclerView = binding.rvShelter
        binding.spinner.adapter = adapter
        binding.button.setOnClickListener(this)
        binding.spinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                selectedOption = option[position]
            }

            override fun onNothingSelected(parent: AdapterView<*>?) {
            }
        }
    }

    private fun postRaw(){
        showProgressBar(true)
        val json = """
            {
            "instances": [
            {
            "latitude": ${UserLocation.latitude},
            "longitude": ${UserLocation.longitude},
            "jenis_hewan": "$selectedOption"
            }
            ]
            }
        """

        val reqBody = json.toRequestBody("application/json".toMediaType())
        val apiService = ApiConfig.getApiService()
        val result = apiService.shelterReq(reqBody)

        result.enqueue(object : Callback<ShelterResponse> {
            override fun onResponse(
                call: Call<ShelterResponse>,
                response: Response<ShelterResponse>
            ) {
                if(response.isSuccessful){
                    val responseBody = response.body()
                    if(responseBody != null){
                        listShelter = listOf(responseBody)
                        showProgressBar(false)
                        showRecycler()
                    }
                }else{
                    showProgressBar(false)
                    Toast.makeText(this@ShelterNearby, "Error", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onFailure(call: Call<ShelterResponse>, t: Throwable) {
                showProgressBar(false)
                Toast.makeText(this@ShelterNearby, t.message, Toast.LENGTH_SHORT).show()
            }
        })
    }

    override fun onClick(v: View?) {
        postRaw()
    }

    private fun showRecycler(){
        recyclerView.layoutManager = LinearLayoutManager(this)
        val adapter = ShelterAdapter(listShelter)
        recyclerView.adapter = adapter

        adapter.setOnItemClickCallback(object : ShelterAdapter.OnItemClickCallback{
            override fun onItemClicked(data: ShelterResponse) {
                val intent = Intent(this@ShelterNearby, MapsActivity::class.java)
                intent.putExtra("Name", data.namaShelter)
                startActivity(intent)
            }
        })
    }

    private fun showProgressBar(show: Boolean){
        if(show){
            pBar.visibility = VISIBLE
        } else{
            pBar.visibility = GONE
        }
    }
}