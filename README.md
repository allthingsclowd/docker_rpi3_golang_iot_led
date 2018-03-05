# docker_rpi3_golang_iot_led
Raspberry Pi 3 IOT Demo using Docker &amp; GOLANG to trigger an LED

Dockerfile can be used to build IOT demo container that runs a golang application that will work with the GPIO pins configured to match the following setup :

![rpi3-led_bb](https://user-images.githubusercontent.com/9472095/36993912-600b37ba-20a7-11e8-853b-b725fee25233.png)

![rpi3-led_schem](https://user-images.githubusercontent.com/9472095/36993928-6b45df4a-20a7-11e8-9e82-a22889daa803.png)

The docker image can be found here: https://hub.docker.com/r/allthingscloud/rpi3-golang-iot-led/

To build the docker file on a rpi : docker image build --tag allthingscloud/rpi3-golang-iot-led -f Dockerfile .

Launch as follows: docker container run -d --name my-golang-iot-demo --device /dev/mem --device /dev/gpiomem allthingscloud/rpi3-golang-iot-led

Similiar python and node docker images are available on my github repo here: https://github.com/allthingsclowd
