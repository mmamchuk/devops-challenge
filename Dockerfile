FROM golang:1.17.6-alpine3.15

WORKDIR /app

COPY ./ /app

RUN go mod download; \
    go build -o booking-server cmd/booking-server/main.go;

CMD ["/app/booking-server"]