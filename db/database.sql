CREATE TABLE characters (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT UNIQUE NOT NULL,
    species TEXT,
    gender TEXT,
    house TEXT,
    dateOfBirth DATE,
    yearOfBirth INT,
    isWizard BOOLEAN,
    bloodStatus TEXT,
    eyeColor TEXT,
    hairColor TExT,
    patronus TEXT,
    isHogwartsStudent BOOLEAN,
    isHogwartsStaff BOOLEAN,
    actor TEXT UNIQUE,
    isAlive BOOLEAN,
    image TEXT UNIQUE
);

CREATE TABLE alternate_names (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    character_id UUID NOT NULL,
    name TEXT UNIQUE NOT NULl,
    FOREIGN KEY(character_id) REFERENCES characters(id)
);

CREATE TABLE wands (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    character_id UUID NOT NULL,
    wood TEXT NOT NULL,
    core TEXT,
    length NUMERIC,
    FOREIGN KEY(character_id) REFERENCES characters(id)
);

CREATE TABLE recasts (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    character_id UUID NOT NULL,
    name TEXT UNIQUE NOT NULL,
    FOREIGN KEY(character_id) REFERENCES characters(id)
);

-- Characters

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Harry Potter', 'Human', 'Male', 'Gryffindor', '31-07-1980', 1980, true, 'Half-blood', 'Green', 'Black', 'Stag', true, false, 'Daniel Radcliffe', true, 'https://shorturl.at/ntIWY');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Hermione Granger', 'Human', 'Female', 'Gryffindor', '19-09-1979', 1979, true, 'Muggle-born', 'Brown', 'Brown', 'Otter', true, false, 'Emma Watson', true, 'https://shorturl.at/uCDJZ');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Ron Weasley', 'Human', 'Male', 'Gryffindor', '01-03-1980', 1980, true, 'Pure-blood', 'Blue', 'Red', 'Jack Russell Terrier', true, false, 'Rupert Grint', true, 'https://shorturl.at/yBFIJ');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Draco Malfoy', 'Human', 'Male', 'Slytherin', '05-06-1980', 1980, true, 'Pure-blood', 'Grey', 'Blonde', true, false, 'Tom Felton', true, 'https://shorturl.at/pHTU0');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Minerva McGonagall', 'Human', 'Female', 'Gryffindor', '04-10-1925', 1925, true, 'Half-born', 'Black', 'Cat', false, true, 'Dame Maggie Smith', true, 'https://shorturl.at/ahDLY');

INSERT INTO characters (name, species, gender, house, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Cedric Diggory', 'Human', 'Male', 'Hufflepuff', 1977, true, 'Pure-blood or Half-blood', 'Grey', 'Brown', true, false, 'Robert Pattinson', false, 'https://shorturl.at/bpFJ8');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Cho Chang', 'Human', 'Female', 'Ravenclaw', '07-04-1979', 1979, true, 'Pure-blood or Half-blood', 'Brown', 'Black', 'Swan', true, false, 'Katie Leung', true, 'https://shorturl.at/bntCK');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Severus Snape', 'Human', 'Male', 'Slytherin', '09-01-1960', 1960, true, 'Half-blood', 'Black', 'Black', 'Doe', false, true, 'Alan Rickman', false, 'https://shorturl.at/hpuwI');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Rubeus Hagrid', 'Half-giant', 'Male', 'Gryffindor', '06-12-1928', 1928, true, 'Half-blood', 'Black', 'Black', false, true, 'Robbie Coltrane', true, 'https://shorturl.at/bnAX5');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Neville Longbottom', 'Human', 'Male', 'Gryffindor', '30-07-1980', 1980, true, 'Pure-blood', 'Blonde', 'Non-corporeal', true, false, 'Matthew Lewis', true, 'https://shorturl.at/avG25');

-- Alternate names

INSERT INTO alternate_names (character_id, name)
VALUES ('829460ac-4c54-4cba-9fe2-0d881d9dc7eb', 'The Boy Who Lived');

INSERT INTO alternate_names (character_id, name)
VALUES ('829460ac-4c54-4cba-9fe2-0d881d9dc7eb', 'The Chosen One');

INSERT INTO alternate_names (character_id, name)
VALUES ('9f494a42-2143-40d9-ae00-d078354a8dd2', 'Dragomir Despard');

INSERT INTO alternate_names (character_id, name)
VALUES ('541c7729-f3a3-4ada-93e1-760581042356', 'Half-Blood Prince');

-- Wands

INSERT INTO wands (character_id, wood, core, length)
VALUES ('829460ac-4c54-4cba-9fe2-0d881d9dc7eb', 'Holly', 'Phoenix feather', 11);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('4ffd24db-f7f2-4239-8fb0-a3af681a312e', 'Vine', 'Dragon heartstring', 10.75);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('9f494a42-2143-40d9-ae00-d078354a8dd2', 'Willow', 'Unicorn hair', 14);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('5734948f-11ce-4c7b-a194-4aa14d3dd38e', 'Hawthorn', 'Unicorn hair', 10);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('ccb87902-08aa-4a94-9f30-3d78d9d63e6c', 'Fir', 'Dragon hartstring', 9.5);

INSERT INTO wands (character_id, wood, length)
VALUES ('beb4f652-caf2-4ae7-a98c-cc39c54d2005', 'Oak', 16);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('26d82957-8992-4a6e-a9ed-58d4a18a0247', 'Cherry', 'Unicorn hair', 13);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('49aff2e5-ab38-4ce2-a955-e00978dcba12', 'Ash', 'Unicorn hair', 12.25);

-- Recasts


-- Queries

SELECT characters.id, characters.name, characters.species, characters.gender, characters.house, characters.dateOfBirth, characters.yearOfBirth, characters.isWizard, characters.bloodStatus, characters.eyeColor, characters.hairColor, characters.patronus, characters.isHogwartsStudent, characters.isHogwartsStaff, characters.actor, characters.isAlive, STRING_AGG(alternate_names.name, ', ') AS alternate_names, wands.wood, wands.core, wands.length
FROM characters
LEFT JOIN alternate_names
ON characters.id = alternate_names.character_id
LEFT JOIN wands
ON characters.id = wands.character_id
GROUP BY characters.id, characters.name, characters.species, characters.gender, characters.house, characters.dateOfBirth, characters.yearOfBirth, characters.isWizard, characters.bloodStatus, characters.eyeColor, characters.hairColor, characters.patronus, characters.isHogwartsStudent, characters.isHogwartsStaff, characters.actor, characters.isAlive, wands.wood, wands.core, wands.length;

-- Select characters with their wand details

SELECT characters.id, characters.name, characters.species, characters.gender, characters.house, characters.dateOfBirth, characters.yearOfBirth, characters.isWizard, characters.bloodStatus, characters.eyeColor, characters.hairColor, characters.patronus, characters.isHogwartsStudent, characters.isHogwartsStaff, characters.actor, characters.isAlive, wands.wood, wands.core, wands.length
FROM characters
LEFT JOIN wands
ON characters.id = wands.character_id;

-- Select alternate names of a character

SELECT alternate_names.name
FROM alternate_names
WHERE alternate_names.character_id = '829460ac-4c54-4cba-9fe2-0d881d9dc7eb';
