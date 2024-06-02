package com.DemoApp.demo_app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DemoApp.demo_app.models.Weather;

public interface WeatherRepository extends JpaRepository<Weather, Integer>{
}