package com.DemoApp.demo_app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DemoApp.demo_app.models.Location;

public interface LocationRepository extends JpaRepository<Location, Integer>{
}
