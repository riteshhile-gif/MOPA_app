package com.personal.ai.app

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val inputPrompt = findViewById<EditText>(R.id.inputPrompt)
        val submitBtn = findViewById<Button>(R.id.submitBtn)
        val outputText = findViewById<TextView>(R.id.outputText)

        submitBtn.setOnClickListener {
            val prompt = inputPrompt.text.toString()
            if (prompt.isNotEmpty()) {
                outputText.text = "Processing: $prompt..."
                // Call AI Service logic here
            } else {
                outputText.text = "Kahi tari lihun pathva!"
            }
        }
    }
}
