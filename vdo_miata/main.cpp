#include <stdio.h>
#include "Arduino.h"
#include <avr/power.h>
#include <SoftwareSerial.h>
#include <DHT.h>
#include <Adafruit_Sensor.h>

#include <ArduinoJson.h>
//dht pin
#define DHTPIN_out 2 //on digital PIN D2
#define DHTPIN_in 3

//bluetooth pin
#define TX 11
#define RX 10

//dht object
#define DHTTYPE DHT22   // DHT 22  (AM2302)

//bluetooth object
  StaticJsonDocument<100> firstJSON;

//dht sensor declaration
DHT sensorOut(DHTPIN_out, DHTTYPE);
DHT sensorIn(DHTPIN_in, DHTTYPE);

boolean log = false;
float humidityOut, temperatureOut, humidityIn, temperatureIn;

float oilTemp=123.5;  //?c dummy value
float oilPressure=10; //bars
float waterTemp=96; //?c
float fuelLevel=50; // Liter
float batVolt=12; //volt



void temp();
void sent();

void setup() {

	Serial.begin(9600);
	sensorOut.begin();
	sensorIn.begin();
}
void loop() {

temp();
sent();

}



void temp() {
	humidityOut = sensorOut.readHumidity();
			temperatureOut = sensorOut.readTemperature();

			humidityIn = sensorIn.readHumidity();
			temperatureIn = sensorIn.readTemperature();




			  char buffer[100];
			  serializeJson(firstJSON, buffer);
			  serializeJson(firstJSON, Serial);

			  //print log on console

			  if (log==true) {
			  //Serial.print("Humidity Out: ");
			//Serial.print(" \t ");
			//Serial.print("Temperature Out: ");
		//	Serial.print(temperatureOut);
			//Serial.println(" *C");
			//Serial.println("-----------------------------------------------------");
			//Serial.print("Humidity In: ");
			//Serial.print(humidityIn);
			//Serial.print("\t");
			//Serial.print("Temperature In: ");
		//	Serial.print(temperatureIn);
		//	Serial.println(" *C ");
			}
			delay(2000);
}
void sent(){
	firstJSON["temperature in"] = humidityIn;
				  firstJSON["humidity in"] = temperatureIn;
				  firstJSON["temperature out"] = temperatureOut;
				  firstJSON["humidity out"] =  humidityOut;
				  firstJSON["oil temp"] = oilTemp;
				  firstJSON["oil pressure"] = oilPressure;
				  firstJSON["water temp"] = waterTemp;
				  firstJSON["oil pressure"] = oilPressure;
				 firstJSON["fuel level"] = fuelLevel;
				 firstJSON["Batt volt"] = batVolt;
}
