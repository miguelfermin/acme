package core

import (
	"encoding/json"
	"fmt"
	"net/http"
)

// Error represents a request error.
type Error struct {
	// System specific error code.
	Code int `json:"errorCode"`
	// Error domain.
	Domain string `json:"errorDomain"`
	// Localized user-facing error message.
	Message string `json:"errorMessage"`
	// HTTP Status ErrorCode.
	StatusCode int `json:"statusCode"`
	// Information about the error. (Optional)
	Info interface{} `json:"errorInfo"`
}

func (e *Error) Error() string {
	return e.JSON()
}

// JSON returns a json representation of the error.
func (e *Error) JSON() string {
	mJson, err := json.Marshal(e)
	if err != nil {
		s := "{\"errorCode\": %v, \"statusCode\": %v, \"errorMessage\": \"%v\"}"
		return fmt.Sprintf(s, e.Code, e.StatusCode, e.Message)
	}
	return string(mJson)
}

// Common Errors

func BadRequestError(msg string) *Error {
	return &Error{StatusCode: http.StatusBadRequest, Message: msg}
}

func BadApiKeyError() *Error {
	return &Error{Code: 10002, StatusCode: http.StatusUnauthorized, Message: "Bad API Key"}
}

func NoUserInContext() *Error {
	return &Error{Code: 10001, StatusCode: http.StatusInternalServerError, Message: "No User in Request Context"}
}
