package com.example.capstoneshelters.auth

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.Toast
import com.example.capstoneshelters.ui.MainActivity
import com.example.capstoneshelters.databinding.ActivityRegisterBinding
import com.google.firebase.auth.FirebaseAuth

class RegisterActivity : AppCompatActivity() {
    private lateinit var binding: ActivityRegisterBinding
    private lateinit var fireBaseAuth: FirebaseAuth
    private lateinit var pBar: ProgressBar

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityRegisterBinding.inflate(layoutInflater)
        setContentView(binding.root)
        fireBaseAuth = FirebaseAuth.getInstance()

        pBar = binding.progressBarRegister

        supportActionBar?.hide()
        binding.tvMoveLogin.setOnClickListener(){
            val intent = Intent(this, LoginActivity::class.java)
            startActivity(intent)
        }
        binding.btnRegister.setOnClickListener{
            val email = binding.edtEmail.text.toString()
            val password = binding.edtPassword.text.toString()
            val conPassword = binding.edtConPassword.text.toString()

            if(email.isNotEmpty()&&password.isNotEmpty()&&conPassword.isNotEmpty()){
                    if(password==conPassword){

                        fireBaseAuth.createUserWithEmailAndPassword(email, password).addOnCompleteListener {
                            showProgressBar(true)
                            if(it.isSuccessful){
                                showProgressBar(false)
                                val intent = Intent(this, MainActivity::class.java)
                                startActivity(intent)
                            }else{
                                showProgressBar(false)
                                Toast.makeText(this, it.exception.toString(), Toast.LENGTH_SHORT).show()
                            }
                        }
                    }else{
                        showProgressBar(false)
                        Toast.makeText(this, "password isn't matching", Toast.LENGTH_SHORT).show()
                    }
            } else{
                Toast.makeText(this, "Empty Field isn't Allowed", Toast.LENGTH_SHORT).show()
            }
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