FROM golang:1.21.4

WORKDIR /app

RUN apt install curl

ENV APP_PORT=9000
EXPOSE ${APP_PORT}

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . ./

RUN go build -o main

HEALTHCHECK --interval=5s --timeout=5s --start-period=5s CMD curl -f http://localhost:9000/

CMD /app/main
