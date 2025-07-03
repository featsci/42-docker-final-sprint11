FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy && \
    go build -o store-service

CMD ["/usr/src/app/store-service"]