/*
 *
 */

#include "Arduino.h"

#include <DHT.h>

#include <BLE2902.h>
#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>

#define DHTPIN_out 4    // what pin we're connected to
#define DHTPIN_in 14

#define DHTTYPE DHT22   // DHT 22  (AM2302)

DHT sensorOut(DHTPIN_out, DHTTYPE);
DHT sensorIn(DHTPIN_in, DHTTYPE);

float humidityOut, temperatureOut, humidityIn, temperatureIn;
int dummy1, dummy2, dummy3;

//ble service
//https://www.guidgenerator.com/online-guid-generator.aspx

bool deviceConnected = false;
BLECharacteristic *tempOutCharacteristic;
BLECharacteristic *tempInCharacteristic;
BLECharacteristic *humOutCharacteristic;
BLECharacteristic *humInCharacteristic;

#define TEMP_SERVICE "00000001-627e-47e5-a3fc-ddabd97aa966"

#define TEMP_OUT "00000002-627e-47e5-a3fc-ddabd97aa966"
#define TEMP_IN "00000003-627e-47e5-a3fc-ddabd97aa966"
#define HUM_IN "00000004-627e-47e5-a3fc-ddabd97aa966"
#define HUM_OUT "a965c1a2-bae2-4e26-952d-2c235a3474a7"

//long, float to byte conversion
union Data {
	float flData;
	uint8_t DataA[4];
};
//LONG - BYTE type conversion
union LData {
	long lgData;
	byte DataB[4];
};

class MyServerCallbacks: public BLEServerCallbacks {
	void onConnect(BLEServer* pServer) {
		deviceConnected = true;
	}
	;

	void onDisconnect(BLEServer* pServer) {
		deviceConnected = false;
	}
};
class MyCallbacks: public BLECharacteristicCallbacks {
	void onWrite(BLECharacteristic *pCharacteristic) {
		std::string rxValue = pCharacteristic->getValue();

		if (rxValue.length() > 0) {
			Serial.println("*********");
			Serial.print("Received Value: ");
			for (int i = 0; i < rxValue.length(); i++)
				Serial.print(rxValue[i]);

			Serial.println();
			Serial.println("*********");
		}
	}
};
//https://www.guidgenerator.com/online-guid-generator.aspx

void setupBle() {
	Serial.begin(115200);
	Serial.setDebugOutput(false);
	// Create the BLE Device
	BLEDevice::init("MX5 BLE");

	// Create the BLE Server
	BLEServer *pServer = BLEDevice::createServer();
	pServer->setCallbacks(new MyServerCallbacks());

	// Create the BLE Service
	BLEService *hiveService = pServer->createService(TEMP_SERVICE);

	// Create a BLE Characteristic
	//BLE_READ Characteristic
	tempOutCharacteristic = hiveService->createCharacteristic(TEMP_OUT,
			BLECharacteristic::PROPERTY_NOTIFY);
	tempOutCharacteristic->addDescriptor(new BLE2902());

	tempInCharacteristic = hiveService->createCharacteristic(TEMP_IN,
			BLECharacteristic::PROPERTY_NOTIFY);
	tempInCharacteristic->addDescriptor(new BLE2902());

	humOutCharacteristic = hiveService->createCharacteristic(HUM_OUT,
			BLECharacteristic::PROPERTY_NOTIFY);
	humOutCharacteristic->addDescriptor(new BLE2902());

	humInCharacteristic = hiveService->createCharacteristic(HUM_IN,
			BLECharacteristic::PROPERTY_NOTIFY);
	humInCharacteristic->addDescriptor(new BLE2902());

	// Start the service
	hiveService->start();

	// Start advertising
	pServer->getAdvertising()->addServiceUUID(hiveService->getUUID());
	pServer->getAdvertising()->start();

	Serial.println("Waiting a client connection to notify...");

}

void handleBle() {

	//Convert float number to byte[]
	//https://iotbyhvm.ooo/esp32-ble-tutorials/

	union Data tIn;
	tIn.flData = dummy1;
	uint8_t* data1 = tIn.DataA;
	tempInCharacteristic->setValue(data1, 4);
	tempInCharacteristic->notify();

	union Data tOut;
	tOut.flData = dummy2;
	uint8_t* data2 = tOut.DataA;
	tempOutCharacteristic->setValue(data2, 4);
	tempOutCharacteristic->notify();

	union Data hIn;
	hIn.flData = dummy3;
	uint8_t* data3 = hIn.DataA;
	humInCharacteristic->setValue(data3, 4);
	humInCharacteristic->notify();

	union Data hOut;
	hOut.flData = humidityOut;
	uint8_t* data4 = hOut.DataA;
	humOutCharacteristic->setValue(data4, 4);
	humOutCharacteristic->notify();

	/*
	 //Check input data from BLE to start Interrupt
	 std::string great = calibrationCharacteristic->getValue();
	 if (great == "%") {
	 Serial.printf("Data received, tare scale\n");
	 prepareTare();
	 //uint8_t inniNum = 25;
	 //calibrationCharacteristic->setValue(&dummy, 1);

	 } else if (great == "$") {
	 setCalZero();  // first innitial no weight on the bar
	 uint8_t inniNum = 25;
	 //calibrationCharacteristic->setValue(&dummy, 1);
	 Serial.printf("Data received, for offset calibration \n");
	 } else if (great == "#") {
	 setCalHundred_();  //Try to reset the gain (w-innitial)/1000
	 //uint8_t inniNum = 25;
	 //calibrationCharacteristic->setValue(&dummy, 1);
	 Serial.printf("Data received, for gain calibration \n");
	 } else if (great == "&") {
	 saveCalibrate(scale_gain, scale_offset);
	 //	uint8_t inniNum = 25;
	 //calibrationCharacteristic->setValue(&dummy, 1);
	 Serial.printf("SAVE FUNCTION COMMAND RECEIVED, new setting saved \n");
	 } else {
	 */
	//if (calibrationCharacteristic->getValue()!=dummy)
	//	  Serial.println(great.c_str());
	/*
	 Serial.printf("Data received ? ");
	 if (great.empty())
	 Serial.println("null");
	 else
	 Serial.println(great.c_str());*/
	/*
	 prepareTare();

	 calibrationCharacteristic->setValue(&dummy, 1);

	 }*/
}

void setup() {

	setupBle();
	sensorOut.begin();
	sensorIn.begin();
}

void loop() {

	delay(2000);

	dummy1 = random(1, 100);
	dummy2=random(1, 100);
	dummy3=random(1, 100);
	Serial.print(dummy1);
/*
	humidityOut = sensorOut.readHumidity();
	temperatureOut = sensorOut.readTemperature();

	humidityIn = sensorIn.readHumidity();
	temperatureIn = sensorIn.readTemperature();
*/
	if (deviceConnected)
		handleBle();

	/*  if (isnan(humidityOut) || isnan(temperatureOut)) {
	 Serial.println("Failed to read sensor out");
	 return;
	 }

	 if (isnan(humidityIn) || isnan(temperatureIn)) {
	 Serial.println("Failed to read sensor in");
	 return;
	 }*/
/*
	Serial.print("Humidity Out: ");
	Serial.print(humidityOut);
	Serial.print(" %\t");
	Serial.print("Temperature Out: ");
	Serial.print(temperatureOut);
	Serial.println(" *C ");
	Serial.println("-----------------------------------------------------");
	Serial.print("Humidity In: ");
	Serial.print(humidityIn);
	Serial.print(" %\t");
	Serial.print("Temperature In: ");
	Serial.print(temperatureIn);
	Serial.println(" *C ");*/
}

