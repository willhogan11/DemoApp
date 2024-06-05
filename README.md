# Demo App

## Table of Contents
- [Summary](#summary)
- [Section 2](#section-2)
- [Section 3](#section-3)
- [Section 4](#section-4)



## Summary

A Proof of Concept Application designed to provide a working demonstration of how a Restful Weather API operates. 
For this application, i used Spring Boot and Java. I used a H2 in memory DB to store the information. The API id designed to return 

#### Included in this project:
- Rest API
- DB
- Exception Handling
- Some Test Coverage
- Spring Boot Application Architecture adherence.

---

### Areas of consideration:

This application was designed based on a POC perspective, and isn't intended to emmulate a working productive system. 
For example, the API is retrieving data from a DB with static information (H2 in memory DB). In a real world scenario the DB would be populated as and when new weather records are processed, which subsequently results with the API retrieving fresh information. 
I did however register for OpenWeatherAPI <https://openweathermap.org/api> to get a look and feel for the type of weather information and type of calls that might be required. 
My DB is roughly predicated on the below;

![image](https://github.com/willhogan11/DemoApp/assets/8812314/5334c7ce-be4b-462d-a570-f7c886e8a183)
![image](https://github.com/willhogan11/DemoApp/assets/8812314/0aa39c8f-57a9-4dea-9efc-28f2d629c4cd)

Ideally given more time, i would have added more queries to get specific weather information between dates, however as the H2 db needs to be populated each time the application runs, the same fresh timestamp is entered for all entries of weather instances, which is why i couldn't search between dates. To try and combat this, i attempted to setup a PostgreSQL and MySQL connection, but some complication arose and i decided to stay with H2 as the DB, just for this Proof of Concept. 
I would also have added more Exception handling and added some more tests to more thoroughly check data in the DB, instead of mocking repsonses. 

---

### Application Architecture:
![App_Architecture](https://github.com/willhogan11/DemoApp/assets/8812314/5f952628-238e-42a3-82e8-19fb44c687ec)

---

### Instructions to run:
- Clone repo to your local machine.
- Perform a ```mvn clean install```
- Build & Run the application locally.
- Open up the H2 console on ```http://localhost:8080/h2-console```
- Click connect on the below;
- ![image](https://github.com/willhogan11/DemoApp/assets/8812314/da767c63-07f1-4a90-8729-231049f9d8c6)
- Locate the ```schema.sql``` file in ```src\main\java\com\DemoApp\demo_app\db\schema.sql```
- Copy all values and paste them into the window below and run;
- ![image](https://github.com/willhogan11/DemoApp/assets/8812314/988cbb83-fd23-4f67-9a2a-5c375573a6f7)
- There should now be two populated tables with values, ```LOCATION``` and ```WEATHER```.
- Test that the Values were entered correctly;
- ![image](https://github.com/willhogan11/DemoApp/assets/8812314/d81ea392-8425-4b0a-84f6-13328eeca904)

---

### Rest Endpoints:

- ##### List all locations and display nested weather values for each:
![image](https://github.com/willhogan11/DemoApp/assets/8812314/0bacb9f1-46fa-447c-b11a-299c5547bea5)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/1eec1e5d-141d-4fe8-93a0-6314d208148a)

- ##### List all weather associated with a single location, with ID as the search option:
![image](https://github.com/willhogan11/DemoApp/assets/8812314/083d71a4-35c9-4676-8e53-8e94198ecb65)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/74e0068b-b7be-4f7b-b892-1ba67813266e)

- ##### List all weather associated with a single location, with name as the search option:
![image](https://github.com/willhogan11/DemoApp/assets/8812314/07ff457d-3c60-481c-9252-2c2109ca58c1)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/71cd14c4-12fd-49c6-ab11-853cac4aef9b)

- ##### Return the Average weather temperature in celcius, for a given location:
![image](https://github.com/willhogan11/DemoApp/assets/8812314/ee550faa-c6f9-4c68-ba24-f9d9ea0b18d5)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/7f6e8258-7737-4372-ba38-807d38425c68)

- #### List all weather entries:
![image](https://github.com/willhogan11/DemoApp/assets/8812314/e539731d-2b0a-4289-aefa-4c17319dcbe7)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/518a34fa-46e9-403e-9f4d-0019f09e2111)

- #### List all weather entries of a specific weather type, for example Cloudy for all locations:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/91b54ff6-1f5b-4e1f-860a-f6ce71ff8a82)

Example response:

![image](https://github.com/willhogan11/DemoApp/assets/8812314/cf83217d-e5b9-43d6-bb41-4cdb0e70bd8c)

---

### Areas of consideration:

This application was designed based on a POC perspective, and isn't intended to emmulate a working productive system. 
For example, the API is retrieving data from a DB with static information (H2 in memory DB). In a real world scenario the DB would be populated as and when new weather records are processed, which subsequently results with the API retrieving fresh information. 
I did however register for OpenWeatherAPI <https://openweathermap.org/api> to get a look and feel for the type of weather information and type of calls that might be required. 
My DB is roughly predicated on the below;

![image](https://github.com/willhogan11/DemoApp/assets/8812314/5334c7ce-be4b-462d-a570-f7c886e8a183)
![image](https://github.com/willhogan11/DemoApp/assets/8812314/0aa39c8f-57a9-4dea-9efc-28f2d629c4cd)

Ideally given more time, i would have added more queries to get specific weather information between dates, however as the H2 db needs to be populated each time the application runs, the same fresh timestamp is entered for all entries of weather instances, which is why i couldn't search between dates. To try and combat this, i attempted to setup a PostgreSQL and MySQL connection, but some complication arose and i decided to stay with H2 as the DB, just for this Proof of Concept. 
I would also have added more Exception handling and added some more tests to more thoroughly check data in the DB, instead of mocking repsonses. 
