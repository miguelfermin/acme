package greetings

import (
	"app/core"
	"net/http"
)

// Define errors specific to this package.

type errorDomain string

const (
	errorDomainHandler  errorDomain = "Greetings.handler"
	errorDomainService  errorDomain = "Greetings.service"
	errorDomainDatabase errorDomain = "Greetings.database"
)

func notFoundError(domain errorDomain) *core.Error {
	return &core.Error{
		Code:       10001,
		Domain:     string(domain),
		Message:    "Greeting not found.",
		StatusCode: http.StatusNotFound,
	}
}

func createError(domain errorDomain, info interface{}) *core.Error {
	return &core.Error{
		Code:       10002,
		Domain:     string(domain),
		Message:    "Error creating greeting.",
		StatusCode: http.StatusInternalServerError,
		Info:       info,
	}
}

func updateError(domain errorDomain, info interface{}) *core.Error {
	return &core.Error{
		Code:       10003,
		Domain:     string(domain),
		Message:    "Error updating greeting.",
		StatusCode: http.StatusInternalServerError,
		Info:       info,
	}
}

func deleteError(domain errorDomain, info interface{}) *core.Error {
	return &core.Error{
		Code:       10004,
		Domain:     string(domain),
		Message:    "Error deleting greeting.",
		StatusCode: http.StatusInternalServerError,
		Info:       info,
	}
}

func fetchError(domain errorDomain, info interface{}) *core.Error {
	return &core.Error{
		Code:       10005,
		Domain:     string(domain),
		Message:    "Error fetching greetings.",
		StatusCode: http.StatusInternalServerError,
		Info:       info,
	}
}
