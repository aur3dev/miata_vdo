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
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\tools\xtensa-esp32-elf-gcc\1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM -DMBEDTLS_CONFIG_FILE="mbedtls/esp_config.h" -DHAVE_CONFIG_H "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/config" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_trace" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_update" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/asio" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bootloader_support" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bt" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/coap" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/console" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/driver" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-tls" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_adc_cal" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_event" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_client" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_server" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_ota" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_server" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_ringbuf" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ethernet" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/expat" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fatfs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freemodbus" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freertos" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/heap" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/idf_test" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/jsmn" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/json" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/libsodium" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/log" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/lwip" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mbedtls" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mdns" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/micro-ecc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mqtt" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/newlib" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nghttp" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nvs_flash" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/openssl" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protobuf-c" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protocomm" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/pthread" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/sdmmc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/smartconfig_ack" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/soc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spi_flash" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spiffs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcp_transport" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcpip_adapter" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ulp" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/unity" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/vfs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wear_levelling" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wifi_provisioning" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wpa_supplicant" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/xtensa-debug-module" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32-camera" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-face" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fb_gfx" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -MMD -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_LOLIN_D32 -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="LOLIN_D32" -DARDUINO_VARIANT="d32"  -DESP32 -DCORE_DEBUG_LEVEL=0    -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\variants\d32" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\libraries\BLE\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\DHT\DHT_U.cpp.o: D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0\DHT_U.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\tools\xtensa-esp32-elf-gcc\1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM -DMBEDTLS_CONFIG_FILE="mbedtls/esp_config.h" -DHAVE_CONFIG_H "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/config" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_trace" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/app_update" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/asio" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bootloader_support" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/bt" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/coap" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/console" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/driver" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-tls" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_adc_cal" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_event" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_client" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_http_server" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_ota" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_https_server" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp_ringbuf" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ethernet" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/expat" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fatfs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freemodbus" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/freertos" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/heap" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/idf_test" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/jsmn" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/json" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/libsodium" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/log" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/lwip" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mbedtls" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mdns" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/micro-ecc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/mqtt" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/newlib" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nghttp" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/nvs_flash" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/openssl" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protobuf-c" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/protocomm" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/pthread" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/sdmmc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/smartconfig_ack" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/soc" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spi_flash" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/spiffs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcp_transport" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/tcpip_adapter" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/ulp" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/unity" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/vfs" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wear_levelling" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wifi_provisioning" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/wpa_supplicant" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/xtensa-debug-module" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp32-camera" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/esp-face" "-ID:\sloeber_2019_esp32\/arduinoPlugin/packages/esp32/hardware/esp32/1.0.1/tools/sdk/include/fb_gfx" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -MMD -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_LOLIN_D32 -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="LOLIN_D32" -DARDUINO_VARIANT="d32"  -DESP32 -DCORE_DEBUG_LEVEL=0    -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\cores\esp32" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\variants\d32" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\DHT\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\libraries\Adafruit_Sensor\1.4.0" -I"D:\sloeber_2019_esp32\arduinoPlugin\packages\esp32\hardware\esp32\1.0.1\libraries\BLE\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


