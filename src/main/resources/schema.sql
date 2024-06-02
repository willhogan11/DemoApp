/* 
CREATE TABLE location (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    local_name VARCHAR(255),
    lat DECIMAL(10,8),
    lon DECIMAL(11,8),
    country CHAR(6)
);

CREATE TABLE weather (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT,
    weather_id INT,
    main VARCHAR(255),
    description VARCHAR(255),
    icon CHAR(4),
    base VARCHAR(255),
    temp DECIMAL(5,2),
    feels_like DECIMAL(5,2),
    temp_min DECIMAL(5,2),
    temp_max DECIMAL(5,2),
    pressure INT,
    humidity INT,
    visibility INT,
    wind_speed DECIMAL(5,2),
    wind_deg INT,
    dt INT,
    sys_country CHAR(2),
    sunrise INT,
    sunset INT,
    timezone INT,
    name VARCHAR(255),
    cod INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (location_id) REFERENCES Location(id)
);

INSERT INTO Location (name, local_name, lat, lon, country) VALUES 
('Galway City', 'Galway', 53.2744122, -9.0490601, 'IE');

---- Ireland ----
INSERT INTO Location (name, local_name, lat, lon, country) VALUES 
('Galway City', 'Galway', 53.2744122, -9.0490601, 'IE'),
('Dublin', 'Dublin', 53.3498053, -6.2603097, 'IE'),
('Cork', 'Cork', 51.8979268, -8.472774, 'IE'),
('Limerick', 'Limerick', 52.6680204, -8.6304983, 'IE'),
('Waterford', 'Waterford', 52.2593197, -7.11007012, 'IE'),
('Sligo', 'Sligo', 54.27661, -8.476089, 'IE'),
('Killarney', 'Killarney', 52.059935, -9.5044265, 'IE');

---- England ----
INSERT INTO Location (name, local_name, lat, lon, country) VALUES
('London', 'London', 51.5073219, -0.1276474, 'GB'),
('Manchester', 'Manchester', 53.4794892, -2.2451148, 'GB'),
('Liverpool', 'Liverpool', 53.4083714, -2.9915726, 'GB'),
('Birmingham', 'Birmingham', 52.489471, -1.898575, 'GB');

---- Scotland ----
INSERT INTO Location (name, local_name, lat, lon, country) VALUES 
('Edinburgh', 'Edinburgh', 55.9533456, -3.1883749, 'GB-SCT'),
('Glasgow', 'Glasgow', 55.864237, -4.251806, 'GB-SCT'),
('Aberdeen', 'Aberdeen', 57.149717, -2.094278, 'GB-SCT'),
('Dundee', 'Dundee', 56.462018, -2.970721, 'GB-SCT'),
('Inverness', 'Inverness', 57.477772, -4.224721, 'GB-SCT');

---- Wales ----
INSERT INTO Location (name, local_name, lat, lon, country) VALUES 
('Cardiff', 'Cardiff', 51.481582, -3.17909, 'GB-WLS'),
('Swansea', 'Swansea', 51.62144, -3.943646, 'GB-WLS'),
('Newport', 'Newport', 51.584151, -2.997664, 'GB-WLS'),
('Bangor', 'Bangor', 53.22739, -4.129263, 'GB-WLS'),
('St David''s', 'St David''s', 51.881227, -5.265495, 'GB-WLS');

---- France ----
INSERT INTO Location (name, local_name, lat, lon, country) VALUES 
('Paris', 'Paris', 48.8566969, 2.3514616, 'FR'),
('Marseille', 'Marseille', 43.2961743, 5.3699525, 'FR'),
('Lyon', 'Lyon', 45.7578137, 4.8320114, 'FR'),
('Toulouse', 'Toulouse', 43.6044622, 1.4442469, 'FR'),
('Nice', 'Nice', 43.7034, 7.2663, 'FR');




-----------------------------------------------------------------------------------
---- Weather for Galway ----
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(1, 804, 'Clouds', 'overcast clouds', '04d',
'stations', 287.87, 287.54, 287.87, 287.87, 
1031, 82, 10000, 3.33, 246, 1717335222, 
'IE', 1717301655, 1717361681, 3600, 'Galway', 200),
(1, 802, 'Clouds', 'broken clouds', '03n',
'stations', 285, 284, 285, 286, 
1029, 85, 8900, 2.24, 255, 1717323286, 
'IE', 1717301655, 1717361681, 3600, 'Galway', 200),
(1, 800, 'Clear', 'clear sky', '01d',
'stations', 286.17, 285.76, 286.17, 286.17, 
1029, 85, 10000, 3.42, 238, 1717286047, 
'IE', 1717301655, 1717361681, 3600, 'Galway', 200),
(1, 803, 'Clouds', 'broken clouds', '03n',
'stations', 283.79, 283.44, 283.79, 283.79, 
1030, 87, 10000, 4, 258, 1717270535, 
'IE', 1717301655, 1717361681, 3600, 'Galway', 200),
(1, 800, 'Clear', 'clear sky', '01n',
'stations', 283.96, 283.6, 283.96, 283.96, 
1030, 88, 10000, 3.5, 240, 1717228963, 
'IE', 1717301655, 1717361681, 3600, 'Galway', 200);

-- Weather for Dublin
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(2, 805, 'Clouds', 'overcast clouds', '04d',
'stations', 289.02, 288.78, 289.02, 290.21, 
1032, 81, 9999, 3.09, 240, 1717335222, 
'IE', 1717301655, 1717361681, 3600, 'Dublin', 204),
(2, 804, 'Clouds', 'overcast clouds', '04d',
'stations', 286.44, 286.26, 286.44, 286.44, 
1033, 85, 8900, 2.68, 245, 1717323286, 
'IE', 1717301655, 1717361681, 3600, 'Dublin', 204),
(2, 802, 'Clouds', 'scattered clouds', '03d',
'stations', 285.17, 284.96, 285.17, 285.17, 
1032, 80, 10000, 4.12, 254, 1717286047, 
'IE', 1717301655, 1717361681, 3600, 'Dublin', 206),
(2, 805, 'Clouds', 'overcast clouds', '04n',
'stations', 283.89, 283.76, 283.89, 283.89, 
1031, 90, 10000, 2.24, 258, 1717270535, 
'IE', 1717301655, 1717361681, 3600, 'Dublin', 204),
(2, 804, 'Clouds', 'overcast clouds', '04n',
'stations', 283.96, 283.93, 283.96, 283.96, 
1032, 93, 10000, 2.68, 255, 1717228963, 
'IE', 1717301655, 1717361681, 3600, 'Dublin', 204);

-- Weather for Cork
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(3, 803, 'Clouds', 'broken clouds', '04d',
'stations', 289.56, 289.47, 289.56, 289.56, 
1032, 81, 10000, 2.68, 240, 1717335222, 
'IE', 1717301655, 1717162671, 3600, 'Cork', 203),
(3, 805, 'Clouds', 'overcast clouds', '04d',
'stations', 286.36, 286.04, 286.36, 286.36, 
1030, 85, 8500, 1.34, 245, 1717323286, 
'IE', 1717301655, 1717162671, 3600, 'Cork', 205),
(3, 803, 'Clouds', 'broken clouds', '04d',
'stations', 285.17, 284.86, 285.17, 285.17, 
1035, 78, 9500, 3.12, 249, 1717286047, 
'IE', 1717301655, 1717162671, 3600, 'Cork', 203),
(3, 804, 'Clouds', 'overcast clouds', '04n',
'stations', 283.89, 283.64, 283.89, 283.89, 
1030, 90, 10000, 3.24, 258, 1717270535, 
'IE', 1717301655, 1717162671, 3600, 'Cork', 204),
(3, 804, 'Clouds', 'overcast clouds', '04n',
'stations', 283.96, 283.57, 283.96, 283.96, 
1029, 93, 10000, 2.68, 250, 1717228963, 
'IE', 1717301655, 1717162671, 3600, 'Cork', 204);


-- Weather for Limerick
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(4, 600, 'Snow', 'light snow', '13d',
    'stations', 270.15, 264.62, 270.13, 270.15, 
    1022, 93, 5000, 9.26, 270, 1717336000, 
    'IE', 1717301676, 1717338672, 3600, 'Limerick', 200);

-- Weather for Waterford
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(5, 802, 'Clouds', 'scattered clouds', '03d',
    'stations', 280.87, 275.98, 280.87, 280.87, 
    1020, 81, 10000, 7.2, 260, 1717322997, 
    'IE', 1717301467, 1717338140, 3600, 'Waterford', 200);

-- Weather for Sligo
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(6, 803, 'Clouds', 'broken clouds', '04d',
    'stations', 276.15, 271.12, 276.15, 276.15, 
    1021, 93, 10000, 7.2, 270, 1717336000, 
    'IE', 1717301788, 1717339326, 3600, 'Sligo', 200);


-- Weather for London
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(8, 804, 'Clouds', 'overcast clouds', '04n',
    'stations', 273.36, 270.42, 273.14, 273.59, 
    1025, 80, 10000, 3.09, 20, 1717324292, 
    'GB', 1717294145, 1717327448, 0, 'London', 200),
(8, 803, 'Clouds', 'broken clouds', '04n',
    'stations', 272.97, 270, 272.84, 273.14, 
    1026, 80, 10000, 3.09, 50, 1717317770, 
    'GB', 1717294145, 1717327448, 0, 'London', 200);

-- Weather for Manchester
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(9, 601, 'Snow', 'snow', '13n',
    'stations', 271.32, 265.9, 271.23, 271.64, 
    1022, 96, 10000, 6.17, 10, 1717323249, 
    'GB', 1717293929, 1717327125, 0, 'Manchester', 200),
(9, 600, 'Snow', 'light snow', '13n',
    'stations', 270.82, 265.6, 270.79, 271.14, 
    1023, 96, 10000, 5.66, 30, 1717317002, 
    'GB', 1717293929, 1717327125, 0, 'Manchester', 200);

    -- Weather for Liverpool
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(10, 801, 'Clouds', 'few clouds', '02n',
    'stations', 272.46, 267.65, 272.35, 272.81, 
    1028, 93, 10000, 6.69, 20, 1717336000, 
    'GB', 1717296805, 1717335683, 0, 'Liverpool', 200),
(10, 902, 'Rain', 'heavy intensity shower rain', '09n',
    'stations', 273.26, 269.4, 273.26, 273.26, 
    1026, 100, 10000, 5.14, 20, 1717317770, 
    'GB', 1717296805, 1717335683, 0, 'Liverpool', 200);

-- Weather for Birmingham
INSERT INTO Weather (location_id, weather_id, main, description, icon, base, 
    temp, feels_like, temp_min, temp_max, pressure, humidity, visibility, 
    wind_speed, wind_deg, dt, sys_country, sunrise, sunset, timezone, name, 
    cod)
VALUES 
(11, 620, 'Snow', 'light shower sleet', '13n',
    'stations', 271.83, 267.55, 271.7, 271.95, 
    1026, 86, 10000, 5.14, 40, 1717336000, 
    'GB', 1717296909, 1717335849, 0, 'Birmingham', 200),
(11, 701, 'Mist', 'mist', '50d',
    'stations', 273.15, 269.52, 273.12, 273.15, 
    1026, 100, 8000, 4.63, 30, 1717326325, 
    'GB', 1717296909, 1717335849, 0, 'Birmingham', 200); */