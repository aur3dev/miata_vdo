// BBQBuddy AVR Code
// Written and tested with a Sparkfun Arduino Pro Micro, 5v, 16Mhz
#include "Arduino.h"

#include <avr/power.h> // for clock_prescale_set()
#include "libraries/LowPower/LowPower.h" // for LowPower.idle()
#include <SoftwareSerial.h>
#include <DHT.h>


#define DHTPIN_out 2    // what pin we're connected to
#define DHTPIN_in 3

#define DHTTYPE DHT22   // DHT 22  (AM2302)

DHT sensorOut(DHTPIN_out, DHTTYPE);
DHT sensorIn(DHTPIN_in, DHTTYPE);

double humidityOut, temperatureOut, humidityIn, temperatureIn;


void writeToBTSerialOutput();
void readAndParseBTSerialInput();
float sampleADCAndAverage(int adcPin, unsigned int numSamples, unsigned int delayMS);

// RX, TX
//-----------------------------------
void setup() {
  // set clock prescale, so that we always run at the same freq, regardless of first boot or after RST
  // this works around the bootloader bug of my arduino pro micro knock-off from ebay
  // here, prescale was set to 4 Mhz when not connected via USB

  // adjust the MCU clock, in addition, this saves battery power
  // note the effect on analogRead(), delay() and the timerISR
  clock_prescale_set(clock_div_2);
  const int PRESCALE_ADJUST = 2; // the reciprocal of the prescale clock divider above
    
  // note: need to adjusbaud rate according to the prescale factor above
  Serial.begin(9600 * PRESCALE_ADJUST);  // USB serial, for debugging

   // HW serial (UART via RX,TX pins), for the HC-05 bluetooth module

  // init analog input pins
  analogReference(DEFAULT); //DEFAULT (Vcc) or INTERNAL (2.56v internal ref, -+ 5%)
  
  // note: cannot use the internal pullups (INPUT_PULLUP), their resistance is too low (~40k)
  sensorOut.begin();
  sensorIn.begin();
  //pinMode(PIN_BATTERY_STATUS, INPUT);
  // the rest of the pins is taken care of by the display library

  //a little startup animation...

}

//-----------------------------------
void loop() {

	humidityOut = sensorOut.readHumidity();
		temperatureOut = sensorOut.readTemperature();

		humidityIn = sensorIn.readHumidity();
		temperatureIn = sensorIn.readTemperature();

		printf("Humidity Out: ");
		printf("%f",humidityOut);
		/*printf("\t");
		printf("Temperature Out: ");
		printf("%f",temperatureOut);
		printf(" *C \n");
		printf("-----------------------------------------------------");
		printf("Humidity In: ");
		printf("%f",humidityIn);
		printf("\t");
		printf("Temperature In: ");
		printf("%f",temperatureIn);
		printf(" *C ");
			*/writeToBTSerialOutput();
			delay(2000);
}


//-----------------------
ISR(TIMER1_COMPA_vect) { 
 // gDisplay.interruptAction(); // the display ISR
}



void writeToBTSerialOutput() {
  const unsigned int OUTPUT_SIZE = 21; // extend this when adding more values
  char outputString[OUTPUT_SIZE];
  char floatBuffer1[6] = {'\0','\0','\0','\0','\0','\0'}; // 4 digits, the dot and \0
  char floatBuffer2[6] = {'\0','\0','\0','\0','\0','\0'}; // 4 digits, the dot and \0

  snprintf(outputString, OUTPUT_SIZE, "%u|%u|%s|%s$", 
    //  gBatteryPercentage, gDisplay.getDutyCycle(),
      dtostrf(temperatureOut, 5, 1, floatBuffer1),
      dtostrf(temperatureIn, 5, 1, floatBuffer2)
  ); // null-termination is taken care of by snprintf()
  
  printf("Writing data to BT serial: \n");
  printf("%c",outputString);

  Serial.write(outputString, strnlen(outputString, OUTPUT_SIZE));
  Serial.flush(); // block until data sent
}

void readAndParseBTSerialInput() {
  const unsigned int BT_READ_BUFFER_SIZE = 5; // extend this one if we need to read longer input
  char btReadBuffer[BT_READ_BUFFER_SIZE];
  unsigned int bytesRead = 0;
  
  while (Serial.available() > 0 && bytesRead < (BT_READ_BUFFER_SIZE - 1)) { // leave 1 byte for the final \0
    char c = Serial.read();
    if (c == '$') break; // found the end char, discard it and break out of loop
    btReadBuffer[bytesRead++] = c;
  }
  btReadBuffer[bytesRead] = '\0'; //\0-terminate buffer

  if (bytesRead > 0) {
    printf("Received BT serial input: \n");
    printf("%c",btReadBuffer);

    // tokenize input
    String btInput = String(btReadBuffer);
    int currBarPos = -1;
    int prevBarPos = 0;
    for (int token = 0; ; token++) {    
      currBarPos = btInput.indexOf('|', prevBarPos); 
      if (currBarPos == -1) { // use the full length of the string if no more '|' present
        currBarPos = btInput.length();
      }
      
      String value = btInput.substring(prevBarPos, currBarPos); 
      printf("BT input token: \n");
      printf("%s",value);
      /*switch (token) {
        case 0: // first token is display brightness
          if (!gPowerSaveEnabled) gDisplay.setDutyCycle(value.toInt()); // ignore brightness commands when power save is enabled
          break;
        case 1: // second is power save switch
          setPowerSaveMode(value.toInt() != 0);
          break;
      }*/

      if (token >= 1 || currBarPos == btInput.length()) { 
        break; // reached the end of input string
      }
      
      prevBarPos = currBarPos + 1; // skips the previous '|'
    }
  }
}

float sampleADCAndAverage(int adcPin, unsigned int numSamples, unsigned int delayMS) {
  unsigned long sum = 0;

  analogRead(adcPin); //throw-away read to let the ADC settle
  delay(2);
  
  for (int i = 0; i < numSamples; i++) {
    sum += analogRead(adcPin);
    if (delayMS > 0) {
      delay(delayMS); // when using a low number of samples, a delay increases adc accuracy
    }
  }

  return (float)sum / (float)numSamples;
}

float adcPinValueToVoltage(float pinValue) {
  Serial.print("ADC BAT reading "); 
  Serial.println(pinValue);

  //float Vcc = (float)readVcc() / 1000.0; // the real Vcc, which is the reference for the ADC
  float Vcc = 5.025; // measured with multimeter
  Serial.print("Real Vcc: ");
  Serial.println(Vcc);
  float voltage = (pinValue * Vcc) / 1023.0;

  Serial.print("Voltage "); 
  Serial.println(voltage);

  return voltage;
}

int voltageToBatteryPercentage(float voltage) {
  float const MIN_BATTERY_VOLTAGE_2X_AA = 1.9; //assuming 0.95v as Vmin for a single NIMH cell
  float const MAX_BATTERY_VOLTAGE_2X_AA = 2.7;
  float const RANGE_BATTERY_VOLTAGE_2X_AA = MAX_BATTERY_VOLTAGE_2X_AA - MIN_BATTERY_VOLTAGE_2X_AA;

  float delta = voltage - MIN_BATTERY_VOLTAGE_2X_AA;
  if (delta <= 0.0) return 0;

  int percentage = (delta / RANGE_BATTERY_VOLTAGE_2X_AA) * 100.0; // implicit cast to int
  if (percentage > 100) percentage = 100;

  Serial.print("BAT percent "); 
  Serial.println(percentage);
  
  return percentage;
}

float adcPinValueToCelsius(float pinValue, float seriesResistorValue) {
  Serial.print("Analog PROBE reading "); 
  Serial.println(pinValue);

  // return PROBE_MISSING here if probe not connected (highest possible value on pin: 1023.0)
  

  // Steinhart-Hart coefficients
  //
  // Values for a0, a1 and a3 where taken from various sources on the internet, e.g.
  // https://github.com/CapnBry/HeaterMeter/blob/master/arduino/heatermeter/grillpid.cpp
  float a0, a1, a3;
  a0=2.4723753e-4;   a1=2.3402251e-4;   a3=1.3879768e-7;    // Maverick ET-72/73
  /*
  a0=5.36924e-4;     a1=1.91396e-4;     a3=6.60399e-8;      // Maverick ET-732 (Honeywell R-T Curve 4) 
  a0=8.98053228e-4;  a1=2.49263324e-4;  a3=2.04047542e-7;   // Radio Shack 10k 
  a0=1.14061e-3;     a1=2.32134e-4;     a3=9.63666e-8;      // Vishay 10k NTCLE203E3103FB0
  a0=0.0012555249;   a1=1.5671315E-4;   a3=3.2210954E-7;    // IKEA Fantast, use a 50k resistor for this one instead 
  */

  // convert the 10-bit integer representation of the voltage value on the analog-in pin to resistance R
  // from https://learn.adafruit.com/thermistor?view=all
  
  //SERIES_RESISTOR on Vcc 
  pinValue = seriesResistorValue / ((1023.0 / pinValue) - 1.0);

  //SERIES_RESISTOR on GND
  //pinValue = ((seriesResistorValue * 1023.0) / pinValue) - seriesResistorValue;

  Serial.print("Thermistor resistance "); 
  Serial.println(pinValue);

  // Compute degrees K
  float logR = log(pinValue);
  float temp = 1.0 / (a0 + logR * (a1 + a3 * logR * logR)); // see https://en.wikipedia.org/wiki/Steinhart%E2%80%93Hart_equation
  temp -= 273.15; // turn degrees K into degrees C


  Serial.print("Temperature "); 
  Serial.print(temp);
  Serial.println(" *C");
  
  return temp; 
}

// from http://provideyourown.com/2012/secret-arduino-voltmeter-measure-battery-voltage/
long readVcc() {
  // Read 1.1V reference against AVcc
  // set the reference to Vcc and the measurement to the internal 1.1V reference
  #if defined(__AVR_ATmega32U4__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
    ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  #elif defined (__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny84__)
    ADMUX = _BV(MUX5) | _BV(MUX0);
  #elif defined (__AVR_ATtiny25__) || defined(__AVR_ATtiny45__) || defined(__AVR_ATtiny85__)
    ADMUX = _BV(MUX3) | _BV(MUX2);
  #else
    ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  #endif  

  delay(2); // Wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Start conversion
  while (bit_is_set(ADCSRA,ADSC)); // measuring

  uint8_t low  = ADCL; // must read ADCL first - it then locks ADCH  
  uint8_t high = ADCH; // unlocks both

  long result = (high<<8) | low;

  //result = 1125300L / result; // Calculate Vcc (in mV); 1125300 = 1.1*1023*1000

  //result = 1096297L / result;   //adjusted by 4700mV Vcc measured externally when powered via USB
  //result = 1158954L / result;   //adjusted by 4890mV Vcc measured externally when powered via Pololin 5v dc-dc step-up converter
  result = 1125300L / result;     //adjusted by 5025mV Vcc measured externally when powered via Pololin 5c dc-dc step-up and two NiMh cells
  
  return result; // Vcc in millivolts
}

