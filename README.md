# yassir-tmdb-automation
Test automation for TMDb client for Android
    
### Instructions
1. Clone the repo to your machine.
2. Spin up the environment by installing and running these dependencies
   
    > appium
    
    > appium-doctor
    
    > appium server (default host and port)

    > robot-framework

    > robotframework-appiumlibrary

    > android studio > (basically an emulator to run the app)

    > Proxyman
    
4. Refer to the project folder structure as following
   
**Demos**

This contains the demos for;

    Robot Framework test run
    Cucumber features test run
    Network traffic monitoring and throttling
    
**Cucumber**

In order to run the automated tests, simply open up the terminal in this folder and run;

    npm install
    npm run android_test


**Robot-framework**

In order to run the automated tests, simply open up the terminal in this folder and run;
    
    robot robot-framework/tests/*.robot


**Network Tests**
1. Install proxyman on your machine
2. Open emulator
3. Install certificates on your emulator
4. Provide the proxy settings on your android emulator
5. Run the application for realtime monitoring
6. Enable throttling to simulate the network velocity

**Results**
![network traffic trace](https://github.com/iamdaniyalz/yassir-tmdb-automation/assets/52025650/ec766b16-3d09-4aa7-9de0-8d792ee30dd2)
![simulate network conditions](https://github.com/iamdaniyalz/yassir-tmdb-automation/assets/52025650/28c7843a-dff8-4e39-a05d-c099f55949a2)

