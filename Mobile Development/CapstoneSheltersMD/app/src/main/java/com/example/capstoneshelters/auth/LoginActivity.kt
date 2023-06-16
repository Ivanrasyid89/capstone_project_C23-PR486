package com.example.capstoneshelters.auth

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.Toast
import com.example.capstoneshelters.ui.MainActivity
import com.example.capstoneshelters.databinding.ActivityLoginBinding
import com.google.firebase.auth.FirebaseAuth

class LoginActivity : AppCompatActivity() {
    private lateinit var binding: ActivityLoginBinding
    private lateinit var fireBaseAuth: FirebaseAuth
    private lateinit var pBar: ProgressBar

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLoginBinding.inflate(layoutInflater)
        setContentView(binding.root)

        fireBaseAuth = FirebaseAuth.getInstance()
        supportActionBar?.hide()

        pBar = binding.progressBarLogin

        binding.tvMoveRgs.setOnClickListener{
            val intent = Intent(this, RegisterActivity::class.java)
            startActivity(intent)
        }
        binding.btnLogin.setOnClickListener{
            val email = binding.edtUsernameLog.text.toString()
            val password = binding.edtPasswordLog.text.toString()
            if(email.isNotEmpty()&&password.isNotEmpty()){
                showProgressBar(true)
                fireBaseAuth.signInWithEmailAndPassword(email, password).addOnCompleteListener {
                    if(it.isSuccessful){
                        showProgressBar(false)
                        val intent = Intent(this, MainActivity::class.java)
                        startActivity(intent)
                    }else{
                        showProgressBar(false)
                        Toast.makeText(this, it.exception.toString(), Toast.LENGTH_SHORT).show()
                    }
                }
            } else{
                showProgressBar(false)
                Toast.makeText(this, "Empty Fields isn't Allowed", Toast.LENGTH_SHORT).show()
            }
        }
    }

    override fun onStart() {
        super.onStart()
        if(fireBaseAuth.currentUser!=null){
            val intent = Intent(this, MainActivity::class.java)
            startActivity(intent)
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