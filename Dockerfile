
FROM golang:1.13-alpine

WORKDIR /src

COPY . .

RUN go build -o app .

CMD ["./app"]