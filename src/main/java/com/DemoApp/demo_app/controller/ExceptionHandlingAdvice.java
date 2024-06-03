package com.DemoApp.demo_app.controller;

import java.util.NoSuchElementException;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ExceptionHandlingAdvice {

  @ExceptionHandler(ExceptionHandling.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  String locationNotFoundHandler(ExceptionHandling ex) {
    return ex.getMessage();
  }

  @ExceptionHandler(NoSuchElementException.class) 
  @ResponseStatus(HttpStatus.NOT_FOUND)
  String noSuchElementException(NoSuchElementException ex) {
    return ex.getMessage();
  }
}
