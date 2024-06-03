package com.DemoApp.demo_app.repositories;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.DemoApp.demo_app.models.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {

    // Returns all Weather entries when using a parameter of Local_name
    @Query(value="SELECT L.country, L.local_name, (W.temp - 273.15) "
    + "AS Celsius_Temp, W.wind_speed, W.description "
    + "FROM Location AS L "
    + "INNER JOIN Weather AS W "
    + "ON L.id = W.location_id "
    + "WHERE L.local_name = :localName", nativeQuery=true)
    List<Map<String, Object>> findWeatherByLocalName(@Param("localName") String localName);
    
    // Returns the average Temperature in Celsius for a given Local_name
    @Query(value="SELECT L.country, L.local_name, AVG(W.temp - 273.15) "
    + "AS Average_Celsius_Temp, CONCAT(L.local_name, ' in ', L.country, ' has an average temp of ', AVG(W.temp - 273.15)) AS Summary "
    + "FROM location AS L "
    + "INNER JOIN weather AS W "
    + "ON  L.id = W.location_id "
    + "WHERE L.local_name = :localName", nativeQuery=true)
    List<Map<String, Object>> averageWeatherByLocalName(@Param("localName") String localName);
}