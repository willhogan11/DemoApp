package com.DemoApp.demo_app.repositories;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DemoApp.demo_app.models.Weather;
public interface WeatherRepository extends JpaRepository<Weather, Long>{
    List<Weather> findByMain(String main);
}