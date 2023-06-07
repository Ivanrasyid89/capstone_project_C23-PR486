package com.example.capstoneshelters

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import com.example.capstoneshelters.databinding.ActivityLoginBinding
import com.example.capstoneshelters.databinding.ActivityRegisterBinding
import com.google.firebase.auth.FirebaseAuth

class RegisterActivity : AppCompatActivity() {
    private lateinit var binding: ActivityRegisterBinding
    private lateinit var fireBaseAuth: FirebaseAuth

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityRegisterBinding.inflate(layoutInflater)
        setContentView(binding.root)
        fireBaseAuth = FirebaseAuth.getInstance()

        supportActionBar?.hide()
        binding.btnRegister.setOnClickListener{
            val email = binding.edtEmail.text.toString()
            val password = binding.edtPassword.text.toString()
            val conPassword = binding.edtConPassword.text.toString()

            if(email.isNotEmpty()&&password.isNotEmpty()&&conPassword.isNotEmpty()){
                    if(password==conPassword){
                        fireBaseAuth.createUserWithEmailAndPassword(email, password).addOnCompleteListener {
                            if(it.isSuccessful){
                                val intent = Intent(this, MainActivity::class.java)
                                startActivity(intent)
                            }else{
                                Toast.makeText(this, it.exception.toString(), Toast.LENGTH_SHORT).show()
                            }
                        }
                    }else{
                        Toast.makeText(this, "password isn't matching", Toast.LENGTH_SHORT).show()
                    }
            } else{
                Toast.makeText(this, "Empty Field isn't Allowed", Toast.LENGTH_SHORT).show()
            }
        }
    }
}