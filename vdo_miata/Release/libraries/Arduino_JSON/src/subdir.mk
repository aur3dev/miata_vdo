################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\JSON.cpp \
D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\JSONVar.cpp 

LINK_OBJ += \
.\libraries\Arduino_JSON\src\JSON.cpp.o \
.\libraries\Arduino_JSON\src\JSONVar.cpp.o 

CPP_DEPS += \
.\libraries\Arduino_JSON\src\JSON.cpp.d \
.\libraries\Arduino_JSON\src\JSONVar.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\Arduino_JSON\src\JSON.cpp.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\JSON.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR     -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\eightanaloginputs" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\Arduino_JSON\src\JSONVar.cpp.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\JSONVar.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR     -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\eightanaloginputs" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


