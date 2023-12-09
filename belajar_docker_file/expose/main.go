package main

import (
	"log"
	"net/http"
)

func main() {
	server := http.Server{
		Addr: ":8080",
	}

	log.Printf("server is running on port %s\n", server.Addr)
	err := server.ListenAndServe()

	if err != nil {
		log.Fatalf("something went wrong: %s", err.Error())
	}
}
