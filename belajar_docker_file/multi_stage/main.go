package main

import (
	"fmt"
	"log"
	"net/http"
	"time"
)

func greet(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World! %s", time.Now().Local())
}

func main() {
	http.HandleFunc("/", greet)

	log.Println("server is running on port 9000")
	http.ListenAndServe(":9000", nil)
}
