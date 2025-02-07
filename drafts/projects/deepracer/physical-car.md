# Physical car

## Links

## Terminology

 Pins - 
  * used to connect shell of car to car
  * used to connect compute layer (top layer) to drive train (bottom layer)
  * <!> Pin loops must be facing away from the car's tires

 Extension - hold the shell above the car, to use as replacement in case you break the one you have (hard crash)
  * 2 types
    * tall
    * small

 Car chassis - assembled car without the shell
  * = compute layer + drive train

 Compute layer - top layer of the DeepRacer car that includes an onboard computer and its compute battery

 Compute Powerbank - External battery to power the compute module (ZenPower Pro Asus Power Bank model)
  * model
    * ORIGINAL - [https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/](https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/)
    * REPLACEMENT - [https://www.amazon.com/gp/product/B093TYQ65Z/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1](https://www.amazon.com/gp/product/B093TYQ65Z/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1) 
  * Cables / connectors
    * USB cable in USB connector
    * USB-A - output port
    * USB-C - input (charging) or output port, port used for charging the battery
  * Light indicators
    * Big LED flashlight (left) - 
    * Status 4-LEDs
      * Can be on, blinking, rapid-blinking, or off
      * 4-LED rapid- blinking - there is a problem <== possibly input power voltage is out of range and input elect is fried!
      * 1-2-3-4-LED solid + 1 blink - show charging level
      * 4-LED solid - fully charged
      * 1-2-3-4-LED blinking - shows discharge level when powering an external device
      * <!> when error is detected, replug the cable from the Power Bank
  * Button
    * turn on/off - to power the battery/power bank
    * if on - can power an external device (like the compute module)
  * Other
    * Silicon wrap - to control excess cable you might need for cable between battery and compute car itself.

 Compute Battery - see Compute Powerbank

 Compute Module Battery - see Compute Powerbank

 Compute module - onboard LINUX computer
  * Cables
    * 4-inch USB-C to USB-C cable to connect the compute battery to the compute module
    * Micro-USB to USB-A cable for point to point connection between car and desktop for initial setup
  * Connectors
    * Right side
      * HDMI video cable - boot process and GUI access
      * Micro-USB (network) - point to point connection between car and desktop for initial setup
      * USB-C (power adapter port) - to power the compute module from a wall transformer or the compute battery
    * Left side
      * micro SD card reader-slot - transfer files to compute module
      * Buttons
      * Status LEDs
  * Light indicators
    * status LED
      * power indicator (front)
        * blue - successful power on
        * blank - no power
        * flashing blue - updating software OR loading model files
        * yellow - device booted to OS
        * flashing yellow - loading bios and OS
        * red - error in system when rebooting or starting application
        * Check status of tail light
      * WiFi indicator (middle)
        * solid blue - connected to WiFi
        * flashing blue - attempting to connect to WiFi
        * red - connection to WiFi failed
        * blinking blue --> red --> off - failure cycle?
      * ??
    * Tail light - to identify DeepRacer cars when many are around (light can be changed/customized in the web UI)
  * Button
    * power on/off (front)
      * if off - long push turn it on
      * if on - long push turns it off
    * reset indicator (back)

 Compute powerbank bed - where the compute powerbank (battery) gets velcro'd into!

 Balance charger - The vehicle/drive battery charger
  * Cables / connectors
    * Has a transformer wall connector
    * White connector used to connect to the vehicle/drive battery for charging
  * Light indicators
    * Green - Full charge, ready to go
    * Red light + green light = not fully charged
      * Red - charging?
      * blinking red and blinking green - charging?
      * solid red and blinking green - charging?

 Drive train - bottom layer of the DeepRacer car
  * Connected to top layer using pins when car is properly assembled
  * Components
    * Drive motor (cable and with heat sink)
    * Bed with port (red connector) where vehicle/drive battery is plugged in
    * steering, suspension, and wheels
  * Button
    * next to front/left wheel - when on drive module shown beep indicating it is powered by the drive battery

 Vehicle Battery - A lithium battery  pack used to drive the vehicle around the track
  * Cables / connectors
    * White 3-pin connector to charge with (by connecting to balance charger)
    * Red 2-pin connector to run the car with

 Drive Battery - see vehicle battery

 Lockout state - to preserve the battery health, the battery goes into lockout state
  * when this happens, the battery won't power the drive train even if still charged
  * this happens if
    * the vehicle/drive battery is not turned off after usage
    * the battery power is low and it needs to be recharged
    * the car is not used for a while
  * to prevent this from happening
    * disconnect both cable (red and white) from car
    * fully charge battery
  * to Get out of locked state, use the 'unlock' cable

 Unlock cable - used to unlock vehicle/drive battery when in a lockout state
  * Cables / connectors
    * White 3-pin JST female connector
    * Red 2-pin JST connector

 Tail light - the compute module is booted up when the tail light lights up

 Ackerman steering - front wheels are not perfectly aligned by design 
  * Used to add velocity and grip in corners!

 Camera port - 4 MP camera with MJPEG
  * 3 ports available,
  * by default, only one/single front-facing/front-lens camera
  * for stereoscopic vision, use 2 camera at a time
  * <!> You cannot use 3 camera at once because of the physical size of the cameras

 Heat sink 
  * Located in the top layer under compute module, therefore facing down when car is correctly put together


## Docs

### Unboxing

 * unboxing video - [https://aws.amazon.com/deepracer/getting-started/](https://aws.amazon.com/deepracer/getting-started/)

### Assembly

 * car assembly - [https://aws.amazon.com/deepracer/getting-started/](https://aws.amazon.com/deepracer/getting-started/)
   1. charge the vehicle/drive battery
   2. install the vehicle/drive battery by connect the RED connector to RED input
   3. use velcro hook to secure the vehicle/drive battery
   4. power on the drive train using the switch on the drive train next to the front left wheel
      * on position = bring button to left
      * off position = bring button to right
      * 2 beep emitted if drive train receive power
      * <!> drive train emit 2 beeps EACH TIME it is powered on
   5. attach the compute layer using the pins (loop away from tire)
   6. connect the compute module to a power adapter (not the laptop battery yet)
   7. power the compute module by (long) pushing the power button
   8. check the status of the power LED in the compute status LED
      * if blank - no power
      * if blinking green - boot sequence in progress
      * if solid green - 
      * if blue - boot sequence completed successfully
   9. 

### Calibration

 * calibrating AWS deepracer - [https://aws.amazon.com/deepracer/getting-started/](https://aws.amazon.com/deepracer/getting-started/)

## Troubleshooting

### Power Bank does not chage/work?

 * Asus model - ZenPower pro
   * [https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/](https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/)
   * manaua - [https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/helpdesk_manual?model2Name=ZenPower-Pro-PD](https://www.asus.com/accessories/power-banks/asus-power-bank/zenpower-pro-pd/helpdesk_manual?model2Name=ZenPower-Pro-PD)

### Setup Wi-Fi configuratoin?

 * Ascertain the deepracer car boots properly
 * Use micro-USB to USB-A cable
 * stop wi-fi on the desktop side
 * cehck deepracer.aws is not hardcoded in /etc/hosts local file
 * connect to new DeepRacer wi-fi network
 * go to https://deepracerr.aws 

 More at:
  * [https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting-connect-to-deepracer.aws.html](https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting-connect-to-deepracer.aws.html)

### cannot connect to Wi-Fi?

 * check your wi-fi password is correct
 * check wi-fi does not require a captcha 

### GUI access?

 * connect the HDMI cable on the compute module

### Console access?

 * console acces
   * connect desktop to car using USB-A to USB-micro cable
   * turn off wifi on desktop
   * https://hostname.local where hostname is AMSS-1234 (found on sticker under the car)

 More at:
  * [https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting-maintain-vehicle-connection.html](https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting-maintain-vehicle-connection.html)

### Reset password to default passwords ?

 ```
 sudo python /opt/aws/deepracer/nginx/reset_default_password.py
 ```

### More

 * [https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting.html](https://docs.aws.amazon.com/deepracer/latest/developerguide/deepracer-troubleshooting.html)

## More

### Getting started

 {% pdf "https://d1.awsstatic.com/deepracer/getstarted.pdf" %}

### Power Bank manual 

 {% pdf "https://dlcdnets.asus.com/pub/ASUS/Phone_Accessory/PowerBank/Q14102_ABTU016_Power_Bank_UM_WW_final.pdf" %}

### (outdated) getting started

 {% pdf "https://d1.awsstatic.com/deepracer/AWS-DeepRacer-Getting-Started-Guide.pdf" %}

 Source - [https://aws.amazon.com/deepracer/getting-started/](https://aws.amazon.com/deepracer/getting-started/)
