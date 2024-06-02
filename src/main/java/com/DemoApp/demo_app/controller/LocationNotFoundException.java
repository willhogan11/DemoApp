package com.DemoApp.demo_app.controller;

public class LocationNotFoundException extends RuntimeException{
    LocationNotFoundException(Long id) {
        super("Could not find the specified location " + id);
    }
}
