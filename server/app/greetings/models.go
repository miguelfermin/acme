package greetings

import (
	"app/core"
	"encoding/json"
	"net/http"
)

type Greeting struct {
	Id          int    `json:"id"`
	Name        string `json:"name"`
	Description string `json:"description"`
}

func greetingFromRequest(r *http.Request) (*Greeting, *core.Error) {
	var g *Greeting
	decoder := json.NewDecoder(r.Body)
	defer r.Body.Close()

	decoderErr := decoder.Decode(&g)
	if decoderErr != nil {
		return nil, core.BadRequestError(decoderErr.Error())
	}

	return g, nil
}
