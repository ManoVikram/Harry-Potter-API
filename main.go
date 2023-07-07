package main

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/gin-gonic/gin"
)

const (
	userName = "manovik18"
	password = "manovik18"
	dbName   = "harrypotter"
	port     = 5432
)

func getAllCharacters(c *gin.Context) {
	
}

func getCharacterById(c *gin.Context) {}

func main() {
	connectionString := fmt.Sprintf("postgres://%s:%s@localhost:%d/%s?sslmode=disable", userName, password, port, dbName)

	db, err := sql.Open("postgres", connectionString)

	if err != nil {
		log.Fatal(err)
	}

	defer db.Close()

	router := gin.Default()

	router.GET("/api/characters", getAllCharacters)

	router.GET("/api/character/:id", getCharacterById)

	router.Run("127.0.0.1:8080")
}
