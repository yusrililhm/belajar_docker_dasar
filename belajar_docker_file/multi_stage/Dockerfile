FROM golang:1.22.0-alpine3.19 AS build

WORKDIR /app

COPY . .

RUN go build -o main .

FROM alpine:3.19

WORKDIR /app

# ENV APP_PORT=9000
# EXPOSE ${APP_PORT}

COPY --from=build /app/main .

CMD [ "/app/main" ]
