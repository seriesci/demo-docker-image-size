
FROM golang:1.13

RUN apt-get update -y
RUN apt-get upgrade -y
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /src

COPY . .

RUN go build -o app .

CMD ["./app"]