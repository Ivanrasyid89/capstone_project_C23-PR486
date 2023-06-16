package com.example.capstoneshelters

import android.content.Intent
import android.content.Intent.ACTION_GET_CONTENT
import android.content.pm.PackageManager
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Build
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.RadioButton
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.example.capstoneshelters.api.ApiConfig
import com.example.capstoneshelters.databinding.ActivityPredictImageBinding
import com.example.capstoneshelters.response.PredictResponse
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.asRequestBody
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.io.File

class PredictImageActivity : AppCompatActivity() {
    private lateinit var binding: ActivityPredictImageBinding
    private lateinit var rB1: RadioButton
    private lateinit var rB2: RadioButton
    private lateinit var nValue: String
    private var getFile: File? = null
    private val utils: Utils = Utils()
    private lateinit var pBar: ProgressBar

    companion object {
        const val CAMERA_X_RESULT = 200
        private val REQUIRED_PERMISSIONS = arrayOf(android.Manifest.permission.CAMERA)
        private const val REQUEST_CODE_PERMISSIONS = 10
    }
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == REQUEST_CODE_PERMISSIONS) {
            if (!allPermissionsGranted()) {
                Toast.makeText(
                    this,
                    "Tidak mendapatkan permission.",
                    Toast.LENGTH_SHORT
                ).show()
                finish()
            }
        }
    }

    private fun allPermissionsGranted() = REQUIRED_PERMISSIONS.all {
        ContextCompat.checkSelfPermission(baseContext, it) == PackageManager.PERMISSION_GRANTED
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityPredictImageBinding.inflate(layoutInflater)
        setContentView(binding.root)
        supportActionBar?.hide()

        if (!allPermissionsGranted()) {
            ActivityCompat.requestPermissions(
                this,
                REQUIRED_PERMISSIONS,
                REQUEST_CODE_PERMISSIONS
            )
        }

        pBar = binding.progressBarPredict

        rB1 = binding.rBCat
        rB2 = binding.rBDog

        nValue = rB1.text.toString()
        rB1.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {
                nValue = rB1.text.toString()
            }
        }

        rB2 .setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {
                nValue = rB2.text.toString()
            }
        }

        binding.cameraButton.setOnClickListener(){ startCamera() }
        binding.galleryButton.setOnClickListener(){startGallery()}
        binding.tButton.setOnClickListener(){uploadImage()}
    }

    private fun startCamera(){
        val intent = Intent(this@PredictImageActivity, LaunchCamera::class.java)
        startActivity(intent)
        launcherIntentCameraX.launch(intent)
    }

    private val launcherIntentCameraX = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        if (it.resultCode == CAMERA_X_RESULT) {
            val myFile = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                it.data?.getSerializableExtra("picture", File::class.java)
            } else {
                @Suppress("DEPRECATION")
                it.data?.getSerializableExtra("picture")
            } as? File
            val isBackCamera = it.data?.getBooleanExtra("isBackCamera", true) as Boolean
            myFile?.let { file ->
                utils.rotateFile(file, isBackCamera)
                getFile = file
                binding.previewImageView.setImageBitmap(BitmapFactory.decodeFile(file.path))
            }
        }
    }

    private fun startGallery() {
        val intent = Intent()
        intent.action = ACTION_GET_CONTENT
        intent.type = "image/*"
        val chooser = Intent.createChooser(intent, "Choose a Picture")
        launcherIntentGallery.launch(chooser)
    }


    private val launcherIntentGallery = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        if (result.resultCode == RESULT_OK) {
            val selectedImg = result.data?.data as Uri
            selectedImg.let { uri ->
                val myFile = utils.uriToFile(uri, this@PredictImageActivity)
                getFile = myFile
                binding.previewImageView.setImageURI(uri)
            }
        }
    }

    private fun uploadImage() {
        if (getFile != null) {
            showProgressBar(true)
            val file = getFile as File
            val requestImageFile = file.asRequestBody("image/jpeg".toMediaType())
            val imageMultipart: MultipartBody.Part = MultipartBody.Part.createFormData(
                "file",
                file.name,
                requestImageFile
            )

            val apiService = ApiConfig.getApiService()
            val uploadImageRequest = if (nValue=="Dog") apiService.dogBreed(imageMultipart) else apiService.catBreed(imageMultipart)
            uploadImageRequest.enqueue(object : Callback<PredictResponse> {
                override fun onResponse(
                    call: Call<PredictResponse>,
                    response: Response<PredictResponse>
                ) {
                    if (response.isSuccessful) {
                        showProgressBar(false)
                        val responseBody = response.body()
                        if (responseBody != null) {
                            binding.tvResult.text = responseBody.prediction
                        }
                    } else {
                        showProgressBar(false)
                        Toast.makeText(this@PredictImageActivity, response.message(), Toast.LENGTH_SHORT).show()
                    }
                }
                override fun onFailure(call: Call<PredictResponse>, t: Throwable) {
                    showProgressBar(false)
                    Toast.makeText(this@PredictImageActivity, t.message, Toast.LENGTH_SHORT).show()
                }
            })
        } else {
            Toast.makeText(this@PredictImageActivity, "Silakan masukkan berkas gambar terlebih dahulu.", Toast.LENGTH_SHORT).show()
        }
    }

    private fun showProgressBar(show: Boolean){
        if(show){
            pBar.visibility = View.VISIBLE
        } else{
            pBar.visibility = View.GONE
        }
    }
}