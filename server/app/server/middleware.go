package server

import (
	"app/core"
	"github.com/julienschmidt/httprouter"
	"net/http"
)

type httpRouterFunc = func(http.ResponseWriter, *http.Request, httprouter.Params)

func httpHandler(fn httpRouterFunc, apiKey string) httpRouterFunc {
	return func(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
		user, err := fetchUser(r)
		if err != nil {
			core.RespondError(err, w)
			return
		}
		if r.Header.Get("ApiKey") != apiKey {
			err := core.BadApiKeyError()
			core.RespondError(err, w)
			return
		}
		ctx := core.NewUserContext(r.Context(), user)
		r = r.WithContext(ctx)
		fn(w, r, ps)
	}
}

func fetchUser(r *http.Request) (*core.User, *core.Error) {
	// User would come from request to user_service endpoint
	return &core.User{Identifier: "1234", FirstName: "Miguel", LastName: "Fermin"}, nil
}
