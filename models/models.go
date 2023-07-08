package models

import "database/sql"

type Characters struct {
	Id                string           `json:"id"`
	Name              string           `json:"name"`
	Species           string           `json:"species"`
	Gender            string           `json:"gender"`
	House             string           `json:"house"`
	DateOfBirth       sql.NullString   `json:"dateOfBirth"`
	YearOfBirth       sql.NullString   `json:"yearOfBirth"`
	IsWizard          bool             `json:"isWizard"`
	BloodStatus       sql.NullString   `json:"bloodStatus"`
	EyeColor          sql.NullString   `json:"eyeColor"`
	HairColor         sql.NullString   `json:"hairColor"`
	Patronus          sql.NullString   `json:"patronus"`
	IsHogwartsStudent bool             `json:"isHogwartsStudent"`
	IsHogwartsStaff   bool             `json:"isHogwartsStaff"`
	Actor             string           `json:"actor"`
	IsAlive           bool             `json:"isAlive"`
	Image             string           `json:"image"`
	AlternateNames    []sql.NullString `json:"alternateNames"`
	Wand              Wands            `json:"wand"`
	Recasts           Recasts          `json:"recasts"`
}

type Wands struct {
	Wood   sql.NullString  `json:"wood"`
	Core   sql.NullString  `json:"core"`
	Length sql.NullFloat64 `json:"length"`
}

type Recasts struct {
	Recasts []sql.NullString `json:"recasts"`
}
