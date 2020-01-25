package com.example.lab1;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    //Variable to be altered in the exercise.
    private String state;

    // Main activity has been created!
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    //Activity has paused and toast appears at the bottom of screen.
    @Override
    protected void onPause(){
        super.onPause();
        state = "Activity has been paused!";
        Toast.makeText(MainActivity.this, state, Toast.LENGTH_LONG).show();
    }

    //Activity has resumed and toast appears at the bottom of screen with a different string.
    @Override
    protected void onResume(){
        super.onResume();
        state = "Activity has been resumed!";
        Toast.makeText(MainActivity.this, state, Toast.LENGTH_LONG).show();
    }

    // This time the toast will not actually display, since the activity stops without allowing it to display.
    // One solution involved creating a thread that would last for the duration of the toast  and then finish the activity.
    @Override
    protected void onStop(){
        super.onStop();
        state = "Activity has been stopped!";
        Toast.makeText(MainActivity.this, state, Toast.LENGTH_LONG).show();
    }
}
