package com.DemoApp.demo_app.controller;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.DemoApp.demo_app.models.Location;
import com.DemoApp.demo_app.repositories.LocationRepository;


@RestController
@RequestMapping("/api/v1")

public class LocationController {

    @Autowired
    private LocationRepository locationRepository;

    @GetMapping
    public List<Location> list() {
        return locationRepository.findAll();
    }
    
    @GetMapping
    @RequestMapping("{id}")
    public Location get (@PathVariable Long id){
        return locationRepository.findById(id)
        .orElseThrow(() -> new ExceptionHandling(id));
    }

    @GetMapping("/location/{localName}")
    public List<Map<String, Object>> getWeatherByLocalName(@PathVariable String localName) {
        List<Map<String, Object>> results = locationRepository.findWeatherByLocalName(localName);
        if(results.isEmpty())
            throw new NoSuchElementException("No weather data found for location: " + localName);
        return results;
    }   
}
