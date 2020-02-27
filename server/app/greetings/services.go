package greetings

import (
	"app/core"
	"database/sql"
)

// Responsible for validating input, performing task, and returning output.
// Essentially carrying out the Business Logic (BL).
//
// NOTE: For simple CRUD services there won't be much BL, but we keep this layer
// for consistency, testability, and future BL that may be needed.
type Service struct {
	repo repository
}

func NewService(db *sql.DB) Service {
	return Service{repo: newRepository(db)}
}

// CreateGreeting creates a greeting.
func (s Service) CreateGreeting(greeting Greeting) (*Greeting, *core.Error) {
	return s.repo.createGreeting(greeting)
}

// ReadGreeting reads all greetings.
func (s Service) ReadGreetings() ([]Greeting, *core.Error) {
	return s.repo.readGreetings()
}

// ReadGreeting reads greeting by id.
func (s Service) ReadGreeting(id string) (*Greeting, *core.Error) {
	return s.repo.readGreeting(id)
}

// UpdateGreeting updates a greeting.
func (s Service) UpdateGreeting(greeting Greeting) (*Greeting, *core.Error) {
	return s.repo.updateGreeting(greeting)
}

// DeleteGreeting deletes a greeting.
func (s Service) DeleteGreeting(greeting Greeting) *core.Error {
	return s.repo.deleteGreeting(greeting)
}
