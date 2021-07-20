################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0\DHT.cpp \
D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0\DHT_U.cpp 

LINK_OBJ += \
.\libraries\DHT\DHT.cpp.o \
.\libraries\DHT\DHT_U.cpp.o 

CPP_DEPS += \
.\libraries\DHT\DHT.cpp.d \
.\libraries\DHT\DHT_U.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\DHT\DHT.cpp.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0\DHT.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR     -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\eightanaloginputs" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\DHT\DHT_U.cpp.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0\DHT_U.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR     -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\eightanaloginputs" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


