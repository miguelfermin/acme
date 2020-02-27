package server

import (
	"app/greetings"
	"database/sql"
	"github.com/julienschmidt/httprouter"
)

func setupRoutes(router *httprouter.Router, db *sql.DB, apiKey string) {
	setupGreetingsRoutes(router, db, apiKey)
}

func setupGreetingsRoutes(router *httprouter.Router, db *sql.DB, apiKey string) {
	h := greetings.NewHandler(db)
	router.POST("/api/v1/greetings", httpHandler(h.CreateGreeting, apiKey))
	router.GET("/api/v1/greetings", httpHandler(h.ReadGreetings, apiKey))
	router.GET("/api/v1/greetings/:id", httpHandler(h.ReadGreeting, apiKey))
	router.PUT("/api/v1/greetings", httpHandler(h.UpdateGreeting, apiKey))
	router.DELETE("/api/v1/greetings", httpHandler(h.DeleteGreeting, apiKey))
}
