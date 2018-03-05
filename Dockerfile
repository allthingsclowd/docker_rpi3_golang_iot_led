FROM arm32v7/golang:1.10.0-stretch

RUN apt-get update && apt-get install -y git && git clone

WORKDIR /go
RUN go get github.com/stianeikeland/go-rpio && git clone https://github.com/allthingsclowd/docker_rpi3_golang_iot_led.git && go build docker_rpi3_golang_iot_led/blink.go

CMD ["./docker_rpi3_golang_iot_led/blink"]
