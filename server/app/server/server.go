package server

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"github.com/julienschmidt/httprouter"
	"log"
	"net/http"
)

func Init(addr, apiKey, dbDriverName, dbDataSourceName string) {
	db := database(dbDriverName, dbDataSourceName)
	defer db.Close()

	router := httprouter.New()
	setupRoutes(router, db, apiKey)

	log.Fatal(http.ListenAndServe(addr, router))
}

func database(driverName, dataSourceName string) *sql.DB {
	db, err := sql.Open(driverName, dataSourceName)
	if err != nil {
		log.Fatal(err)
	}
	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	}
	return db
}
