FROM golang:1.21.4

ENV APP_PORT=8080
EXPOSE ${APP_PORT}

RUN mkdir /app

COPY . /app

RUN cd /app && go build -o main 
CMD go run /app/main.go
