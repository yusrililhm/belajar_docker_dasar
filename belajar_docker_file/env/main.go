package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	server := http.Server{
		Addr: fmt.Sprintf(":%s", os.Getenv("APP_PORT")),
	}

	log.Println("server is running on port: ", os.Getenv("APP_PORT"))
	err := server.ListenAndServe()

	if err != nil {
		log.Fatal("error while running server: ", err.Error())
	}
}
