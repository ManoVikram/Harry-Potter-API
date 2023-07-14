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

CREATE TABLE spells (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT UNIQUE NOT NULL,
    description TEXT UNIQUE NOT NULL
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

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Luna Lovegood', 'Human', 'Female', 'Ravenclaw', '13-02-1981', 1981, true, 'Grey', 'Blonde', 'Hare', true, false, 'Evanna Lynch', true, 'https://shorturl.at/pqtLP');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Ginny Weasley', 'Human', 'Female', 'Gryffindor', '11-08-1981', 1981, true, 'Pure-blood', 'Brown', 'Red', 'Horse', true, false, 'Bonnie Wright', true, 'https://shorturl.at/lmSUV');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Sirius Black', 'Human', 'Male', 'Gryffindor', '03-11-1959', 1959, true, 'Pure-blood', 'Grey', 'Black', 'Hare', false, false, 'Gary Oldman', false, 'https://shorturl.at/esuyz');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Remus Lupin', 'Werewolf', 'Male', 'Gryffindor', '10-03-1960', 1960, true, 'Half-blood', 'Green', 'Brown', 'Wolf', false, true, 'David Thewlis', false, 'https://shorturl.at/puxA3');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Arthur Weasley', 'Human', 'Male', 'Gryffindor', '06-02-1950', 1950, true, 'Pure-blood', 'Blue', 'Red', 'Weasel', false, false, 'Mark Williams', true, 'https://shorturl.at/hjCER');

INSERT INTO characters (name, species, gender, house, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Bellatrix Lestrange', 'Human', 'Female', 'Slytherin', 1951, true, 'Pure-blood', 'Brown', 'Black', false, false, 'Helena Bonham Carter', false, 'https://shorturl.at/ixGIU');

INSERT INTO characters (name, species, gender, house, dateOfBirth, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Lord Voldemort', 'Human', 'Male', 'Slytherin', '31-12-1926', 1926, true, 'Half-blood', 'Red', 'Bald', false, false, 'Ralph Fiennes', false, 'https://shorturl.at/bcdNV');

INSERT INTO characters (name, species, gender, house, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Horace Sughorn', 'Human', 'Male', 'Slytherin', true, 'Pure-blood', 'Green', 'Blonde', false, true, 'Jim Broadbent', true, 'https://shorturl.at/aimvJ');

INSERT INTO characters (name, species, gender, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Kingsley Shacklebolt', 'Human', 'Male', true, 'Pure-blood', 'Brown', 'Brown', 'Lynx', false, false, 'George Harris', true, 'https://shorturl.at/cejLU');

INSERT INTO characters (name, species, gender, house, isWizard, bloodStatus, eyeColor, hairColor, patronus, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Dolores Umbridge', 'Human', 'Female', 'Slytherin', true, 'Half-blood', 'Brown', 'Grey', 'Persian Cat', false, true, 'Imelda Staunton', true, 'https://shorturl.at/ivCIL');

INSERT INTO characters (name, species, gender, house, yearOfBirth, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Lucius Malfoy', 'Human', 'Male', 'Slytherin', 1954, true, 'Pure-blood', 'Grey', 'Blonde', false, false, 'Jason Isaacs', true, 'https://shorturl.at/nEKLP');

INSERT INTO characters (name, species, gender, house, isWizard, bloodStatus, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Vincent Crabbe', 'Human', 'Male', 'Slytherin', true, 'Pure-blood', 'Black', 'Black', true, false, 'Jamie Waylett', false, 'https://shorturl.at/moDU3');

INSERT INTO characters (name, species, gender, house, isWizard, bloodStatus, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Gregory Goyle', 'Human', 'Male', 'Slytherin', true, 'Pure-blood', 'Brown', true, false, 'Josh Herdman', true, 'https://shorturl.at/zNO57');

INSERT INTO characters (name, species, gender, isWizard, eyeColor, hairColor, isHogwartsStudent, isHogwartsStaff, isAlive, image)
VALUES ('Mrs Norris', 'Cat', 'Female', false, 'Yellow', 'Brown', false, true, true, 'https://shorturl.at/gvwC6');

INSERT INTO characters (name, species, gender,isWizard, bloodStatus, hairColor, isHogwartsStudent, isHogwartsStaff, actor, isAlive, image)
VALUES ('Argus Filch', 'Human', 'Male', false, 'Squib', 'Grey', false, true, 'David Bradley', true, 'https://t.ly/tTA5L');

-- Alternate names

INSERT INTO alternate_names (character_id, name)
VALUES ('829460ac-4c54-4cba-9fe2-0d881d9dc7eb', 'The Boy Who Lived');

INSERT INTO alternate_names (character_id, name)
VALUES ('829460ac-4c54-4cba-9fe2-0d881d9dc7eb', 'The Chosen One');

INSERT INTO alternate_names (character_id, name)
VALUES ('9f494a42-2143-40d9-ae00-d078354a8dd2', 'Dragomir Despard');

INSERT INTO alternate_names (character_id, name)
VALUES ('541c7729-f3a3-4ada-93e1-760581042356', 'Half-Blood Prince');

INSERT INTO alternate_names (character_id, name)
VALUES ('e30cb30d-ce46-489e-9060-c555866b4881', 'Padfoot');

INSERT INTO alternate_names (character_id, name)
VALUES ('e30cb30d-ce46-489e-9060-c555866b4881', 'Snuffles');

INSERT INTO alternate_names (character_id, name)
VALUES ('6567d209-9279-4507-910f-6f7a0eb60c1b', 'Professor Lupin');

INSERT INTO alternate_names (character_id, name)
VALUES ('6567d209-9279-4507-910f-6f7a0eb60c1b', 'Moony');

INSERT INTO alternate_names (character_id, name)
VALUES ('6567d209-9279-4507-910f-6f7a0eb60c1b', 'Remus John Lupin');

INSERT INTO alternate_names (character_id, name)
VALUES ('b2f983a7-b708-4bd9-831f-99beaa90f509', 'Bella');

INSERT INTO alternate_names (character_id, name)
VALUES ('0c05c59f-d3e4-4b38-bc45-8d56d9847996', 'Tom Marvolo Riddle');

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

INSERT INTO wands (character_id, wood)
VALUES ('956a23ae-a7c6-41fa-a595-153a7989b58c', 'Yew');

INSERT INTO wands (character_id, wood, core, length)
VALUES ('6567d209-9279-4507-910f-6f7a0eb60c1b', 'Cypress', 'Unicorn hair', 10.25);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('b2f983a7-b708-4bd9-831f-99beaa90f509', 'Walnut', 'Dragon heartstring', 12.75);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('0c05c59f-d3e4-4b38-bc45-8d56d9847996', 'Yew', 'Phoenix feather', 13.5);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('ccb20465-454a-4c5c-8cc1-b76c4df87f5c', 'Cedar', 'Dragon heartstring', 10.25);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('30f574a6-bf3b-421c-97d7-d4d8e96bc462', 'Birch', 'Dragon heartstring', 8);

INSERT INTO wands (character_id, wood, core, length)
VALUES ('2d8edd3e-014f-4389-b532-176beeac04c5', 'Elm', 'Dragon heartstring', 8);

-- Recasts

INSERT INTO recasts (character_id, name)
VALUES ('e30cb30d-ce46-489e-9060-c555866b4881', 'James Walters');

INSERT INTO recasts (character_id, name)
VALUES ('e30cb30d-ce46-489e-9060-c555866b4881', 'Rohan Gotobed');

-- Spells

INSERT INTO spells (name, description)
VALUES ('Aberto', 'Opens locked doors');

INSERT INTO spells (name, description)
VALUES ('Accio', 'Summons objects');

INSERT INTO spells (name, description)
VALUES ('Aguamenti', 'Summons water');

INSERT INTO spells (name, description)
VALUES ('Alohomora', 'Unlocks objects');

INSERT INTO spells (name, description)
VALUES ('Anapneo', 'Clears someone''s airway');

INSERT INTO spells (name, description)
VALUES ('Aparecium', 'Reveals secret written messages');

INSERT INTO spells (name, description)
VALUES ('Apparate', 'A non-verbal transportation spell that allows a witch or wizard to instantly travel on the spot and appear at another location (disapparate is the opposite)');

INSERT INTO spells (name, description)
VALUES ('Ascendio', 'Propells someone into the air');

INSERT INTO spells (name, description)
VALUES ('Avada Kedavra', 'Also known as The Killing Curse, the most evil spell in the Wizarding World; one of three Unforgivable Curses; Harry Potter is the only known witch or wizard to survive it');

INSERT INTO spells (name, description)
VALUES ('Avis', 'Conjures a small flock of birds');

INSERT INTO spells (name, description)
VALUES ('Bat', 'Bogey Hex - Turns the target''s boogers into bats');

INSERT INTO spells (name, description)
VALUES ('Bombardo', 'Creates an explosion');

INSERT INTO spells (name, description)
VALUES ('Brackium Emendo', 'Heals broken bones');

INSERT INTO spells (name, description)
VALUES ('Capacious Extremis', 'Known as the Extension Charm, it''s a complicated spell that can greatly expand or extend the capacity of an object or space without affecting it externally');

INSERT INTO spells (name, description)
VALUES ('Confundo', 'Known as the Confundus Charm, it causes confusion of the target');

INSERT INTO spells (name, description)
VALUES ('Conjunctivitis Curse', 'Affects the eyes and sight of a target');

INSERT INTO spells (name, description)
VALUES ('Crinus Muto', 'Changes hair color and style');

INSERT INTO spells (name, description)
VALUES ('Crucio', 'One of three Unforgivable Curses, it causes unbearable pain in the target');

INSERT INTO spells (name, description)
VALUES ('Diffindo', 'Used to precisely cut an object');

INSERT INTO spells (name, description)
VALUES ('Disillusionment Charm', 'Causes the target to take on the appearance of its surroundings');

INSERT INTO spells (name, description)
VALUES ('Disapparate', 'A non-verbal transportation spell that allows a witch or wizard to instantly travel on the spot and leave for another location (apparate is the opposite)');

INSERT INTO spells (name, description)
VALUES ('Engorgio', 'Causes rapid growth in the targeted object');

INSERT INTO spells (name, description)
VALUES ('Episkey', 'Heals minor injuries');

INSERT INTO spells (name, description)
VALUES ('Expecto patronum', 'The Patronus Charm is a powerful projection of hope and happiness that drives away Dementors; a corpeal Patronus takes the respective animal form of the caster, while a non-corpeal appears as a wisp of light; at 13, Harry Potter was the youngest known witch or wizard to produce a corpeal Patronus');

INSERT INTO spells (name, description)
VALUES ('Erecto', 'Allows a witch or wizard to build a structure, like a tent');

INSERT INTO spells (name, description)
VALUES ('Evanesco', 'Vanishes objects');

INSERT INTO spells (name, description)
VALUES ('Expelliarmus', 'Forces an opponent to drop whatever''s in their possession');

INSERT INTO spells (name, description)
VALUES ('Ferula', 'A healing charm that conjures wraps and bandages for wounds');

INSERT INTO spells (name, description)
VALUES ('Fidelius Charm', 'A complex charm that conceals a secret into the soul of a chosen "Secret Keeper". If a location is the subject of concealment, it becomes undetectable to others');

INSERT INTO spells (name, description)
VALUES ('Fiendfyre Curse', 'Conjures destructive, enormous enchanted flames');

INSERT INTO spells (name, description)
VALUES ('Finite Incantatem', 'A general counter-spell that''s used to reverse or counter already cast charms');

INSERT INTO spells (name, description)
VALUES ('Furnunculus Curse', 'A jinx that causes a breakout of boils or pimples');

INSERT INTO spells (name, description)
VALUES ('Geminio', 'Duplicates objects');

INSERT INTO spells (name, description)
VALUES ('Glisseo', 'Transforms a staircase into a slide');

INSERT INTO spells (name, description)
VALUES ('Homenum Revelio', 'Reveals the presence of another person');

INSERT INTO spells (name, description)
VALUES ('Homonculus Charm', 'Detects anyone''s true identity and location on a piece of parchment; used to create the Marauder''s Map');

INSERT INTO spells (name, description)
VALUES ('Immobulus', 'Immobilises living targets');

INSERT INTO spells (name, description)
VALUES ('Impedimenta', 'A temporary jinx that slows the movement of the target');

INSERT INTO spells (name, description)
VALUES ('Incarcerous', 'Conjures ropes');

INSERT INTO spells (name, description)
VALUES ('Imperio', 'One of the three Unforgivable Curses, it places the target under the complete control of the caster');

INSERT INTO spells (name, description)
VALUES ('Impervius', 'Makes an object waterproof');

INSERT INTO spells (name, description)
VALUES ('Incendio', 'Conjures flames');

INSERT INTO spells (name, description)
VALUES ('Langlock', 'Causes the target''s tongue to stick to the roof of their mouth');

INSERT INTO spells (name, description)
VALUES ('Legilimens', 'Invading or navigating another''s mind');

INSERT INTO spells (name, description)
VALUES ('Levicorpus', 'Levitates the target by their ankle');

INSERT INTO spells (name, description)
VALUES ('Locomotor Mortis', 'The Leg-Locker curse bounds the target''s legs');

INSERT INTO spells (name, description)
VALUES ('Lumos', 'Illuminates the caster''s wand');

INSERT INTO spells (name, description)
VALUES ('Morsmordre', 'Conjures and projects Lord Voldemort''s Dark Mark');

INSERT INTO spells (name, description)
VALUES ('Mucus Ad Nauseam', 'Inflicts an extreme runny nose or cold');

INSERT INTO spells (name, description)
VALUES ('Muffliato', 'Creates a buzzing sound in the target''s ears to prevent eavesdropping');

INSERT INTO spells (name, description)
VALUES ('Nox', 'Reverses the lumos charm, extinguishing a wand''s light');

INSERT INTO spells (name, description)
VALUES ('Obliviate', 'Erases the target''s memory');

INSERT INTO spells (name, description)
VALUES ('Obscuro', 'Conjures a blindfold');

INSERT INTO spells (name, description)
VALUES ('Oculus Reparo', 'Repairs eyeglasses');

INSERT INTO spells (name, description)
VALUES ('Oppugno', 'Directs an object or person to attack a victim');

INSERT INTO spells (name, description)
VALUES ('Petrificus Totalus', 'Temporarily freezes or petrifies the body of the target');

INSERT INTO spells (name, description)
VALUES ('Periculum', 'Conjures flares/red sparks');

INSERT INTO spells (name, description)
VALUES ('Piertotum Locomotor', 'Incantation used to bring to life inanimate objects and artifacts');

INSERT INTO spells (name, description)
VALUES ('Protean Charm', 'Links objects together for better communication');

INSERT INTO spells (name, description)
VALUES ('Protego', 'Casts an invisible shield around the caster, protecting against spells and objects (except for The Killing Curse)');

INSERT INTO spells (name, description)
VALUES ('Reducto', 'Reduces the target to pieces');

INSERT INTO spells (name, description)
VALUES ('Reducio', 'Shrinks an enlarged object to its regular size');

INSERT INTO spells (name, description)
VALUES ('Renneverate', 'Awakens or revives the target');

INSERT INTO spells (name, description)
VALUES ('Reparifors', 'Heals magical ailments like poisoning or paralysis');

INSERT INTO spells (name, description)
VALUES ('Reparo', 'Fixes broken objects');

INSERT INTO spells (name, description)
VALUES ('Rictusempra', 'A charm that disarms an opponent by tickling them');

INSERT INTO spells (name, description)
VALUES ('Riddikulus', 'Used to defeat a Boggart, the charm allows the scary creature to assume a comedic form, disarming it');

INSERT INTO spells (name, description)
VALUES ('Scourgify', 'Cleans objects');

INSERT INTO spells (name, description)
VALUES ('Sectumsempra', 'Inflicts severe lacerations and haemorrhaging on the target');

INSERT INTO spells (name, description)
VALUES ('Serpensortia', 'Conjures a live snake');

INSERT INTO spells (name, description)
VALUES ('Silencio', 'Silences the target');

INSERT INTO spells (name, description)
VALUES ('Sonorus', 'Amplifies the witch or wizard''s voice');

INSERT INTO spells (name, description)
VALUES ('Spongify', 'Softens the target');

INSERT INTO spells (name, description)
VALUES ('Stupefy', 'The Stunning spell freezes objects and renders living targets unconscious');

INSERT INTO spells (name, description)
VALUES ('Tarantallegra', 'Aimed at the legs, causes uncontrollable dancing movement');

INSERT INTO spells (name, description)
VALUES ('Unbreakable Vow', 'A magically binding contract that results in the death of whoever breaks it');

INSERT INTO spells (name, description)
VALUES ('Wingardium Leviosa', 'Causes an object to levitate; but remember what Hermione said: "It''s Wing-gar-dium Levi-o-sa, make the ''gar'' nice and long."');

-- Queries
----------

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

-- Select recasts
SELECT recasts.name
FROM recasts
WHERE recasts.character_id = characters.id;

-- Select character by their ID
SELECT characters.id, characters.name, characters.species, characters.gender, characters.house, characters.dateOfBirth, characters.yearOfBirth, characters.isWizard, characters.bloodStatus, characters.eyeColor, characters.hairColor, characters.patronus, characters.isHogwartsStudent, characters.isHogwartsStaff, characters.actor, characters.isAlive, wands.wood, wands.core, wands.length
FROM characters
JOIN wands
ON wands.character_id = characters.id
WHERE characters.id = '829460ac-4c54-4cba-9fe2-0d881d9dc7eb';

-- Select speely with the specific ID
SELECT *
FROM spells
WHERE spells.id = '6827c083-5411-4946-9a56-c5a409b1d6de';
