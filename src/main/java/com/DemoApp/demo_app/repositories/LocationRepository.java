package com.DemoApp.demo_app.repositories;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.DemoApp.demo_app.models.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {

    // Returns all Weather entries when using a partameter of Local_name
    @Query(value="SELECT L.country, L.local_name, (W.temp - 273.15) AS Celsius_Temp, W.wind_speed, W.description FROM Location L INNER JOIN Weather W ON L.id = W.location_id WHERE L.local_name = :localName", nativeQuery=true)
    List<Map<String, Object>> findWeatherByLocalName(@Param("localName") String localName);
    
}