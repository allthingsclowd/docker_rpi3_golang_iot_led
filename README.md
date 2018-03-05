# Raspberry Pi 3 IoT Demo using Docker &amp; GOLANG to trigger an LED

Dockerfile can be used to build IOT demo container that runs a golang application that will work with the GPIO pins configured to match the following setup :

![rpi3-led_bb](https://user-images.githubusercontent.com/9472095/36993912-600b37ba-20a7-11e8-853b-b725fee25233.png)

![rpi3-led_schem](https://user-images.githubusercontent.com/9472095/36993928-6b45df4a-20a7-11e8-9e82-a22889daa803.png)

The docker image can be found here: https://hub.docker.com/r/allthingscloud/rpi3-golang-iot-led/

To build the docker file on a rpi after cloning the repository : 
```bash
docker image build --tag allthingscloud/rpi3-golang-iot-led -f Dockerfile . 
```

Launch as follows: 
```bash
docker container run -d --name my-golang-iot-demo --device /dev/mem --device /dev/gpiomem allthingscloud/rpi3-golang-iot-led
```

Similiar python and node docker images are available on my github repo here: https://github.com/allthingsclowd

# Raspberry Pi 3 - Docker Installation
Please check the official documentation at https://docs.docker.com

I used the following steps :

```bash

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

echo "deb [arch=armhf] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list   
   
sudo apt-get update

sudo apt-get install docker-ce

```
