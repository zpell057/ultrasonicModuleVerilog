These modules were made to measure distance from an ultrasonic module commonly used with Arduino kits (HC-SR04).<br>
ultrasonicModule.v is the top module of this project. Submodule distanceMeasure.v sends the trigger signal and measures the length of the echo signal to determine length in hexadecimal. Then, submodule BinToBCD8.v converts the hexadecimal distance to BCD.<br>
The modules assume a clock speed of 50Mhz and estimate the distance from the module to the object in front of it.<br>
I uploaded and tested this module on an Altera Max II CPLD.<br>
![](https://github.com/zpell057/ultrasonicModuleVerilog/blob/main/ultrasonicDemo.gif)
