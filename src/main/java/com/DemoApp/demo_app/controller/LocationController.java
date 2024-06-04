package com.DemoApp.demo_app.controller;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.DemoApp.demo_app.models.Location;
import com.DemoApp.demo_app.repositories.LocationRepository;

@RestController
@RequestMapping("/api/location")

public class LocationController {

    @Autowired
    private LocationRepository locationRepository;

    /* End point which utilises the get request, which is provided as part of the "out of the box" CRUD operations, by extending JpaRepository. 
     * This query returns all weather readins for all locations. */
    @GetMapping
    public List<Location> list() {
        return locationRepository.findAll();
    }
    
    // End point which takes an id as a parameter and returns all weather readings for a given Location ID. 
    @GetMapping
    @RequestMapping("{id}")
    public Location get (@PathVariable Long id){
        return locationRepository.findById(id)
        .orElseThrow(() -> new ExceptionHandling(id));
    }
    
    /* End point to return marshalled data based on localName parameter. If localname param is supplied, i.e /location/Galway, 
     * then all weather entries for the given localName are returned. 
     * If /location/Galway?average=true is entered, then the average temperature based on all weather readings for the given localName, is returned.
     * Note: this is linked to a custom query defined in the LocationRepository and doesn't use the "out of the box" CRUD operations which are provided by extending JpaRepository*/
    @GetMapping("/name/{localName}")
    public List<Map<String, Object>> getAverageWeatherByLocalName(@PathVariable String localName, @RequestParam(required = false) Boolean average) {
        if(Boolean.TRUE.equals(average)) {
            List<Map<String, Object>> results = locationRepository.averageWeatherByLocalName(localName);
            if(results.isEmpty())
                throw new NoSuchElementException("No weather data found for location: " + localName);
            return results;
        } else {
            List<Map<String, Object>> results = locationRepository.findWeatherByLocalName(localName);
            if(results.isEmpty())
                throw new NoSuchElementException("No weather data found for location: " + localName);
            return results;
        }
    }
}
