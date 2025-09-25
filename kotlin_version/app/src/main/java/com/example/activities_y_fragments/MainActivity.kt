// Archivo: MainActivity.kt
package com.example.activities_y_fragments // Reemplaza si tu package es diferente

import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.google.android.material.bottomnavigation.BottomNavigationView

class MainActivity : AppCompatActivity() {

    private val sharedViewModel: SharedViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val bottomNavigation: BottomNavigationView = findViewById(R.id.bottom_navigation)

        bottomNavigation.setOnItemSelectedListener { item ->
            val fragment: Fragment = when (item.itemId) {
                R.id.nav_textfields -> TextFieldsFragment()
                R.id.nav_buttons -> ButtonsFragment()
                R.id.nav_selection -> SelectionFragment()
                R.id.nav_lists -> ListsFragment()
                R.id.nav_info -> InfoFragment()
                else -> TextFieldsFragment()
            }
            supportFragmentManager.beginTransaction()
                .replace(R.id.fragment_container, fragment)
                .commit()
            true
        }

        if (savedInstanceState == null) {
            bottomNavigation.selectedItemId = R.id.nav_textfields
        }
    }

    // --- FUNCIÓN CORREGIDA ---
    // El parámetro es "intent: Intent" (no nulo)
    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        val fragmentId = intent.getIntExtra("GO_TO_FRAGMENT", -1)
        if (fragmentId != -1) {
            val bottomNavigation: BottomNavigationView = findViewById(R.id.bottom_navigation)
            bottomNavigation.selectedItemId = fragmentId
        }
    }
}