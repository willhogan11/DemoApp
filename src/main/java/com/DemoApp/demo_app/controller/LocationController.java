package com.DemoApp.demo_app.controller;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import com.DemoApp.demo_app.repositories.LocationRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.DemoApp.demo_app.models.Location;

@RestController
@RequestMapping("/api/v1/location")

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
        .orElseThrow(() -> new LocationNotFoundException(id));
    }
}
