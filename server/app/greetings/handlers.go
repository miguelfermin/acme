package greetings

import (
	"app/core"
	"database/sql"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

// Responsible for converting http.Request into service (Use Case) input,
// calling service with the input, and converting service result model into http.Response.
type Handler struct {
	service Service
}

func NewHandler(db *sql.DB) Handler {
	return Handler{service: NewService(db)}
}

func (h Handler) CreateGreeting(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	greeting, err := greetingFromRequest(r)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	saved, err := h.service.CreateGreeting(*greeting)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	core.Respond(w, saved)
}

func (h Handler) ReadGreetings(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	g, err := h.service.ReadGreetings()
	if err != nil {
		core.RespondError(err, w)
		return
	}
	core.Respond(w, g)
}

func (h Handler) ReadGreeting(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	id := ps.ByName("id")
	g, err := h.service.ReadGreeting(id)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	core.Respond(w, g)
}

func (h Handler) UpdateGreeting(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	greeting, err := greetingFromRequest(r)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	updated, err := h.service.UpdateGreeting(*greeting)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	core.Respond(w, updated)
}

func (h Handler) DeleteGreeting(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	greeting, err := greetingFromRequest(r)
	if err != nil {
		core.RespondError(err, w)
		return
	}
	if err := h.service.DeleteGreeting(*greeting); err != nil {
		core.RespondError(err, w)
		return
	}
	res := core.Response{Message: "Successfully deleted greeting"}
	core.Respond(w, res)
}
