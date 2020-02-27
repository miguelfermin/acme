package greetings

import (
	"app/core"
	"testing"
)

/* NOTE: This testing isn't really testing anything valuable. It is here to show how to
 * use the "mockGreetingsRepo" defined at the bottom of this file to test the Business
 * Logic that will live in the services layer.
 */
func TestServiceCreateGreeting(t *testing.T) {
	// Test Input
	name := "Good Afternoon"
	desc := "A greeting you say in the afternoon"
	greeting := Greeting{123, name, desc}

	// Mock setup: specify expected Output
	service := newMockGreetingsService(&greeting, nil, nil)

	// Test for expected Output
	saved, err := service.CreateGreeting(greeting)
	if err != nil {
		t.Error("Error should be nil")
		return
	}
	if saved == nil {
		t.Error("Greeting should NOT nil")
		return
	}
	if saved.Id != 123 {
		t.Error("Greeting ID incorrect")
	}
	if saved.Name != name {
		t.Error("Greeting name incorrect")
	}
	if saved.Description != desc {
		t.Error("Greeting description incorrect")
	}
}

/* Configurable mock service.
 * Expected Output is specified by parameters
 */

func newMockGreetingsService(greeting *Greeting, greetings []Greeting, error *core.Error) Service {
	return Service{mockGreetingsRepo{greeting, greetings, error}}
}

type mockGreetingsRepo struct {
	greeting  *Greeting
	greetings []Greeting
	error     *core.Error
}

func (m mockGreetingsRepo) createGreeting(greeting Greeting) (*Greeting, *core.Error) {
	return m.greeting, m.error
}

func (m mockGreetingsRepo) readGreetings() ([]Greeting, *core.Error) {
	return m.greetings, m.error
}

func (m mockGreetingsRepo) readGreeting(id string) (*Greeting, *core.Error) {
	return m.greeting, m.error
}

func (m mockGreetingsRepo) updateGreeting(greeting Greeting) (*Greeting, *core.Error) {
	return m.greeting, m.error
}

func (m mockGreetingsRepo) deleteGreeting(greeting Greeting) *core.Error {
	return m.error
}
