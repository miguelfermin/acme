package greetings

import (
	"app/core"
	"database/sql"
)

// repository is the database gateway and abstraction.
type repository interface {
	// createGreeting creates a greeting.
	createGreeting(greeting Greeting) (*Greeting, *core.Error)

	// readGreeting reads all greetings.
	readGreetings() ([]Greeting, *core.Error)

	// readGreeting reads greeting by id.
	readGreeting(id string) (*Greeting, *core.Error)

	// updateGreeting updates a greeting.
	updateGreeting(greeting Greeting) (*Greeting, *core.Error)

	// deleteGreeting deletes a greeting.
	deleteGreeting(greeting Greeting) *core.Error
}

func newRepository(db *sql.DB) repository {
	return repo{db: db}
}

type repo struct {
	db *sql.DB
}

func (r repo) createGreeting(greeting Greeting) (*Greeting, *core.Error) {
	stmt, err := r.db.Prepare("INSERT INTO greetings VALUES (?, ?, ?)")
	if err != nil {
		return nil, createError(errorDomainDatabase, err.Error())
	}
	res, err := stmt.Exec(nil, greeting.Name, greeting.Description)
	if err != nil {
		return nil, createError(errorDomainDatabase, err.Error())
	}
	lastID, err := res.LastInsertId()
	if err != nil {
		return nil, createError(errorDomainDatabase, err.Error())
	}
	greeting.Id = int(lastID)
	return &greeting, nil
}

func (r repo) readGreetings() ([]Greeting, *core.Error) {
	return r.fetchByQuery("SELECT * FROM greetings")
}

func (r repo) readGreeting(id string) (*Greeting, *core.Error) {
	fetched, err := r.fetchByQuery("SELECT * FROM greetings WHERE id = ?", id)
	if err != nil {
		return nil, err
	}
	if len(fetched) == 0 {
		return nil, notFoundError(errorDomainDatabase)
	}
	return &fetched[0], nil
}

func (r repo) updateGreeting(greeting Greeting) (*Greeting, *core.Error) {
	query := "UPDATE greetings SET name=?, description=? WHERE id=?"
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return nil, updateError(errorDomainDatabase, err.Error())
	}
	result, err := stmt.Exec(
		greeting.Name,
		greeting.Description,
		greeting.Id,
	)
	if err != nil {
		return nil, updateError(errorDomainDatabase, err.Error())
	}
	count, err := result.RowsAffected()
	if err != nil {
		return nil, updateError(errorDomainDatabase, err.Error())
	}
	if count == 0 {
		return nil, notFoundError(errorDomainDatabase)
	}
	return &greeting, nil
}

func (r repo) deleteGreeting(greeting Greeting) *core.Error {
	stmt, err := r.db.Prepare("DELETE FROM greetings WHERE id = ?")
	if err != nil {
		return deleteError(errorDomainDatabase, err.Error())
	}
	res, err := stmt.Exec(greeting.Id)
	if err != nil {
		return deleteError(errorDomainDatabase, err.Error())
	}
	rowCnt, err := res.RowsAffected()
	if err != nil {
		return deleteError(errorDomainDatabase, err.Error())
	}
	if rowCnt == 0 {
		return notFoundError(errorDomainDatabase)
	}
	return nil
}

// Helper

func (r repo) fetchByQuery(query string, ids ...interface{}) ([]Greeting, *core.Error) {
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return nil, fetchError(errorDomainDatabase, err.Error())
	}
	defer stmt.Close()

	var id int
	var name string
	var description string

	var fetched []Greeting
	fetched = []Greeting{}

	rows, err := stmt.Query(ids...)
	if err != nil {
		return nil, fetchError(errorDomainDatabase, err.Error())
	}
	defer rows.Close()

	for rows.Next() {
		rowErr := rows.Scan(&id, &name, &description)
		if rowErr != nil {
			return nil, fetchError(errorDomainDatabase, rowErr.Error())
		}
		fetched = append(fetched, Greeting{Id: id, Name: name, Description: description})
	}
	if err = rows.Err(); err != nil {
		return nil, fetchError(errorDomainDatabase, err.Error())
	}
	return fetched, nil
}
