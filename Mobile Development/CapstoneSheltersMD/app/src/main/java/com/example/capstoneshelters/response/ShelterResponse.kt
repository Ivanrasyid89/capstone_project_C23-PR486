package com.example.capstoneshelters.response

import com.google.gson.annotations.SerializedName

data class ShelterResponse(

	@field:SerializedName("alamat_final")
	val alamatFinal: String,

	@field:SerializedName("nama_shelter")
	val namaShelter: String
)