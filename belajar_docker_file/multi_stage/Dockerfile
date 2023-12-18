FROM golang:1.21.4 AS build

WORKDIR /app

ENV APP_PORT=9000
EXPOSE ${APP_PORT}

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o main
RUN ls -l

FROM alpine:3.19.0

WORKDIR /app

COPY --from=build /app/main ./
RUN ls -l

CMD /app/main
