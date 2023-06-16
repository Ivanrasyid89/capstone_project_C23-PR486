package com.example.capstoneshelters.api

import com.example.capstoneshelters.response.PredictResponse
import com.example.capstoneshelters.response.ShelterResponse
import okhttp3.MultipartBody
import retrofit2.Call
import retrofit2.http.*
import okhttp3.RequestBody

interface ApiService {
    @POST("predict")
    fun shelterReq(
        @Body reqBody: RequestBody
    ): Call<ShelterResponse>

    @Multipart
    @POST("catbreed")
    fun catBreed(
        @Part file: MultipartBody.Part,
    ): Call<PredictResponse>

    @Multipart
    @POST("dogbreed")
    fun dogBreed(
        @Part file: MultipartBody.Part,
    ): Call<PredictResponse>
}