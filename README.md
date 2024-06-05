# Demo App

### Summary

A Proof of Concept Application designed to provide a working demonstration of how a Restful Weather API operates. 


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

#### List all locations and display nested weather values for each location


### Areas of improvement:
