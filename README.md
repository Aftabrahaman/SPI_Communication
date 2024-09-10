# SPI_Communication
Here i have used SPI communication to connect ESP32 (Slave) with FPGA(Master). Cora Z7 (FPGA) Has it's own clock with a clock speed 50MHz provides to Zynq Arm . This Clock is too high for the SPI communication with ESP8266. So I have reduced it to 96KHz. With this clock speed data transfer from FPGA to esp8266 serially. 
