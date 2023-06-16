package com.example.capstoneshelters.mapsprivider

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.capstoneshelters.R
import com.google.android.gms.maps.CameraUpdateFactory
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.MarkerOptions
import com.example.capstoneshelters.databinding.ActivityMapsBinding
import com.example.capstoneshelters.location.ShelterLocation

class MapsActivity : AppCompatActivity(), OnMapReadyCallback {

    private lateinit var mMap: GoogleMap
    private lateinit var binding: ActivityMapsBinding
    private lateinit var shelterName: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMapsBinding.inflate(layoutInflater)
        setContentView(binding.root)
        supportActionBar?.hide()

        shelterName = intent.getStringExtra("Name").toString()

        val mapFragment = supportFragmentManager
            .findFragmentById(R.id.map) as SupportMapFragment
        mapFragment.getMapAsync(this)
    }

    override fun onMapReady(googleMap: GoogleMap) {
        mMap = googleMap

        val shelter = LatLng(ShelterLocation.latitude, ShelterLocation.longitude)
        mMap.addMarker(MarkerOptions().position(shelter).title(shelterName))
        mMap.moveCamera(CameraUpdateFactory.newLatLng(shelter))
        mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(shelter, 15f))
    }
}