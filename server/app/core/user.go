package core

import (
	"context"
)

// User represents a user model.
type User struct {
	Identifier string `json:"id"`
	FirstName  string `json:"firstName"`
	LastName   string `json:"lastName"`
}

type AppContextKey string

const userKey = AppContextKey("com.mafsofware.app.ctx.key.user")

func UserFromContext(ctx context.Context) (*User, *Error) {
	user, ok := ctx.Value(userKey).(*User)
	if !ok {
		return nil, NoUserInContext()
	}
	return user, nil
}

func NewUserContext(ctx context.Context, user *User) context.Context {
	return context.WithValue(ctx, userKey, user)
}
