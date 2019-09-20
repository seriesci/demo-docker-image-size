
FROM golang:1.13

RUN apt-get update -y && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src

COPY . .

RUN go build -o app .

CMD ["./app"]