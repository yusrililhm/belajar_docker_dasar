package main

import (
	"fmt"
	"log"
	"os"

	"github.com/gofiber/fiber/v2"
)

func main() {
	path := fmt.Sprintf("%s/hello.txt", os.Getenv("APP_DATA"))
	_, err := os.Stat(path)

	isNotExists := os.IsNotExist(err)

	if isNotExists {
		file, err := os.Create(path)

		if err != nil {
			log.Fatalf("error while create file: %s", err.Error())
		}

		defer file.Close()
	}
	
	app := fiber.New()
	err = app.Listen(":" + os.Getenv("APP_PORT"))

	if err != nil {
		log.Fatal("error when running: ", err.Error())
	}
}
