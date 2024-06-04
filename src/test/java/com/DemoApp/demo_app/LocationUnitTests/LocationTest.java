package com.DemoApp.demo_app.LocationUnitTests;
import java.util.Collections;
import java.util.Optional;

import static org.hamcrest.Matchers.is;
import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.when;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.DemoApp.demo_app.models.Location;
import com.DemoApp.demo_app.repositories.LocationRepository;

@SpringBootTest
@AutoConfigureMockMvc
public class LocationTest {

    @Autowired
    private MockMvc mockMvc;

    //Mock your Location Repository
    @MockBean
    private LocationRepository locationRepository;

    private final String locationName = "Galway";
    private final Long dummy_location_id = (long) 1;
    
    //Sample test for GET /api/location
    @Test
    void testGetAllLocations() throws Exception {
         when(locationRepository.findAll()).thenReturn(Collections.emptyList());
         this.mockMvc.perform(get("/api/location"))
                .andExpect(status().isOk());
    }

    //Sample test for GET /api/location/{id}
    @Test
    void testGetLocationById() throws Exception {
        Location locationModel = new Location();
        locationModel.setId(1L);
        locationModel.setName("Galway City");
        locationModel.setLocal_name("Galway");
        locationModel.setLat((float) 53.2744140625);
        locationModel.setLon((float) -9.049059867858887);
        locationModel.setCountry("IE");
        
        when(locationRepository.findById(dummy_location_id)).thenReturn(Optional.of(locationModel));
        this.mockMvc.perform(get("/api/location/" + dummy_location_id))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.id", is(Math.toIntExact(locationModel.getId()))))
                .andExpect(jsonPath("$.name", is(locationModel.getName())))
                .andExpect(jsonPath("$.local_name", is(locationModel.getLocal_name())))
                .andExpect(jsonPath("$.lat", is(locationModel.getLat())))
                .andExpect(jsonPath("$.lon", is(locationModel.getLon())))
                .andExpect(jsonPath("$.country", is(locationModel.getCountry())));
    }

    // Sample test for GET /api/location/{localName}
    @Test
    void testGetWeatherByLocationName() throws Exception {
         when(locationRepository.findWeatherByLocalName(locationName)).thenReturn(Collections.emptyList());
         this.mockMvc.perform(get("/api/location/name/" + locationName))
                .andExpect(status().isOk());
    }
} 