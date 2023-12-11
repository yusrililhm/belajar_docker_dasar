package main

import (
	"os"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Get("/", func(c *fiber.Ctx) error {
		data := struct {
			Message string `json:"message"`
		}{
			Message: "hello world",
		}

		return c.Status(fiber.StatusOK).JSON(data)
	})

	app.Listen(":" + os.Getenv("APP_PORT"))
}
