FROM golang:1.21.4

WORKDIR /app

ENV PORT=9000
EXPOSE ${PORT}/tcp

RUN addgroup gogroup
RUN adduser gouser
RUN adduser gouser gogroup
RUN chown gouser:gogroup ./
USER gouser

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o main && chmod +x main

ENV PATH="/app:$PATH"

CMD [ "/app/main" ]
