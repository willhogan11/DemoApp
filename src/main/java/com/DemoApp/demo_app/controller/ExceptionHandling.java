package com.DemoApp.demo_app.controller;

public class ExceptionHandling extends RuntimeException{
    ExceptionHandling(Long id) {
        super("Could not find the specified location " + id);
    }
}
