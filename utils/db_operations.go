package utils

import (
	"database/sql"
	"fmt"
	"log"
)

func ConnectToDB(userName string, password string, port int, dbName string) *sql.DB {
	connectionString := fmt.Sprintf("postgres://%s:%s@localhost:%d/%s?sslmode=disable", userName, password, port, dbName)

	db, err := sql.Open("postgres", connectionString)

	if err != nil {
		log.Fatal(err)
	}

	return db
}

func FetchAllRows(db *sql.DB, query string) *sql.Rows {
	rows, err := db.Query(query)

	if err != nil {
		log.Fatal(err)
	}

	return rows
}
