
FROM golang:1.13-alpine AS builder

WORKDIR /src

COPY . .

RUN go build -o app .

FROM alpine:latest

WORKDIR /src

COPY --from=builder /src/ .

CMD ["./app"]