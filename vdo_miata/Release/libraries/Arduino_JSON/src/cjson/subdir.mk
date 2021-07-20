################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\cjson\cJSON.c 

C_DEPS += \
.\libraries\Arduino_JSON\src\cjson\cJSON.c.d 

LINK_OBJ += \
.\libraries\Arduino_JSON\src\cjson\cJSON.c.o 


# Each subdirectory must supply rules for building sources it contributes
libraries\Arduino_JSON\src\cjson\cJSON.c.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src\cjson\cJSON.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\tools\avr-gcc\5.4.0-atmel3.6.1-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR     -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\cores\arduino" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\variants\eightanaloginputs" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\arduino\hardware\avr\1.6.23\libraries\SoftwareSerial\src" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Arduino_JSON\0.1.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


