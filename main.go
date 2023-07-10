package main

import (
	"harry_potter_api/models"
	"harry_potter_api/utils"

	"database/sql"
	"fmt"
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
	_ "github.com/lib/pq"
)

const (
	userName = "manovik18"
	password = "manovik18"
	dbName   = "harrypotter"
	port     = 5432
)

var db *sql.DB
var allCharacters []models.Characters

func getAllCharacters(c *gin.Context) {
	query := `SELECT characters.id, characters.name, characters.species, characters.gender, characters.house, characters.dateOfBirth, characters.yearOfBirth, characters.isWizard, characters.bloodStatus, characters.eyeColor, characters.hairColor, characters.patronus, characters.isHogwartsStudent, characters.isHogwartsStaff, characters.actor, characters.isAlive, wands.wood, wands.core, wands.length
	FROM characters
	LEFT JOIN wands
	ON characters.id = wands.character_id;`

	// Fetch all the characters data
	allCharactersRow := utils.FetchAllRows(db, query)
	defer allCharactersRow.Close()

	for allCharactersRow.Next() {
		var character models.Characters
		var alternateNames []sql.NullString
		var wand models.Wands
		var recasts []sql.NullString

		err := allCharactersRow.Scan(&character.Id, &character.Name, &character.Species, &character.Gender, &character.House, &character.DateOfBirth, &character.YearOfBirth, &character.IsWizard, &character.BloodStatus, &character.EyeColor, &character.HairColor, &character.Patronus, &character.IsHogwartsStudent, &character.IsHogwartsStaff, &character.Actor, &character.IsAlive, &wand.Wood, &wand.Core, &wand.Length)

		if err != nil {
			log.Fatal(err)
		}

		alternateNamesQuery := fmt.Sprintf(`SELECT alternate_names.name
		FROM alternate_names
		WHERE alternate_names.character_id = '%s';`, character.Id)

		// Fetch all the alternate names for a character if available
		alternateNamesRows := utils.FetchAllRows(db, alternateNamesQuery)
		alternateNamesRows.Close()

		for alternateNamesRows.Next() {
			var alternateName sql.NullString

			err := alternateNamesRows.Scan(&alternateName)

			if err != nil {
				log.Fatal(err)
			}

			alternateNames = append(alternateNames, alternateName)
		}

		recastsQuery := fmt.Sprintf(`SELECT recasts.name
		FROM recasts
		WHERE recasts.character_id = '%s';`, character.Id)

		// Fetch all the names of the recasts for that character if available
		recastsRows := utils.FetchAllRows(db, recastsQuery)
		recastsRows.Close()

		for recastsRows.Next() {
			var recastName sql.NullString

			err := recastsRows.Scan(&recastName)

			if err != nil {
				log.Fatal(err)
			}

			recasts = append(recasts, recastName)
		}

		character.AlternateNames = alternateNames
		character.Wand = wand
		character.Recasts = recasts

		allCharacters = append(allCharacters, character)
	}

	c.IndentedJSON(http.StatusOK, allCharacters)
}

func getCharacterById(c *gin.Context) {}

func main() {
	db = utils.ConnectToDB(userName, password, port, dbName)
	defer db.Close()

	router := gin.Default()

	router.GET("/api/characters", getAllCharacters)
	router.GET("/api/character/:id", getCharacterById)

	router.Run("127.0.0.1:8080")
}
