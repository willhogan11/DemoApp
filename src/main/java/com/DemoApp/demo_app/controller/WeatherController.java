package com.DemoApp.demo_app.controller;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DemoApp.demo_app.models.Weather;
import com.DemoApp.demo_app.repositories.WeatherRepository;


@RestController
@RequestMapping("/api/weather")

public class WeatherController {

    @Autowired
    private WeatherRepository weatherRepository;

     /* End point which utilises the get request, which is provided as part of the "out of the box" CRUD operations, by extending JpaRepository. 
     * This query returns all weather readings. */
    @GetMapping
    public List<Weather> list() {
        return weatherRepository.findAll();
    }

    /* End point which takes a Weather Type as param for example api/weather/Clouds, would display all weatehr entries for any lcoation, where it is cloudy */
    @GetMapping
    @RequestMapping("/{main}")
    public List<Weather> getAllLocationsWithWeatherType(@PathVariable String main) {
        List<Weather> results = weatherRepository.findByMain(main);
        if(results.isEmpty())
            throw new NoSuchElementException("No Weather type found for the value: " + main);
        return results;
    }
}
