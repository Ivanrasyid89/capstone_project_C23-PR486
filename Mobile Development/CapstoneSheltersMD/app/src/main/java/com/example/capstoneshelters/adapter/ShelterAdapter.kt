package com.example.capstoneshelters.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.capstoneshelters.R
import com.example.capstoneshelters.location.ShelterLocation
import com.example.capstoneshelters.response.ShelterResponse

class ShelterAdapter(private val data: List<ShelterResponse>) : RecyclerView.Adapter<ShelterAdapter.MyViewHolder>() {
    private lateinit var onItemClickCallBack: OnItemClickCallback

    class MyViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val shelteName:TextView = itemView.findViewById(R.id.tv_shelter)
        val shelterLocation: TextView = itemView.findViewById(R.id.tv_location)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder = MyViewHolder(
        LayoutInflater.from(parent.context).inflate(R.layout.activity_shelter_adapter, parent, false)
    )

    override fun getItemCount() = data.size

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        val regEx = Regex("-?\\d+\\.\\d+")
        val rawData = data[position].alamatFinal

        val startIndex = rawData.indexOf(String())
        val endIndex = rawData.lastIndexOf("[")-2

        val newAddress = rawData.substring(startIndex, endIndex)
        val trimData = regEx.findAll(rawData)
        val trimmedValue = trimData.map { it.value.toDouble() }.toList()

        ShelterLocation.latitude = trimmedValue[0]
        ShelterLocation.longitude = trimmedValue[1]

        holder.shelteName.text = data[position].namaShelter
        holder.shelterLocation.text = newAddress

        holder.itemView.setOnClickListener{
            onItemClickCallBack.onItemClicked(data[holder.adapterPosition])
        }
    }

    fun setOnItemClickCallback(onItemClickCallback: OnItemClickCallback) {
        this.onItemClickCallBack = onItemClickCallback
    }

    interface OnItemClickCallback {
        fun onItemClicked(data: ShelterResponse)
    }
}