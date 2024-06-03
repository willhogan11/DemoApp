package com.DemoApp.demo_app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.DemoApp.demo_app.models.Weather;

public interface WeatherRepository extends JpaRepository<Weather, Integer>{
}