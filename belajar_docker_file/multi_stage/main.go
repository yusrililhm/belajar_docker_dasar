package main

import (
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
)

func main() {
	app := fiber.New()

	app.Use(logger.New())

	app.Get("/", func(c *fiber.Ctx) error {
		data := struct {
			Message string `json:"message"`
		}{
			Message: "hello",
		}

		return c.Status(fiber.StatusOK).JSON(data)
	})

	app.Listen(":" + os.Getenv("APP_PORT"))
}
