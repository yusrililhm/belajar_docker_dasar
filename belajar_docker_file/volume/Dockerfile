FROM golang:1.21.4

WORKDIR /app

ENV APP_PORT=8080
ENV APP_DATA=/data

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o main && chmod +x main

CMD [ "/app/main" ]
