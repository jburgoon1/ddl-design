DROP DATABASE IF EXISTS league;

CREATE DATABASE league;

\c league

CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL,
    wins INTEGER NOT NULL,
    loss INTEGER NOT NULL,
    ranking INTEGER CHECK (wins>loss)
);
CREATE TABLE players
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    goals INTEGER NOT NULL
    current_team INTEGER REFERENCES teams
);

CREATE TABLE referees
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    games_ref INTEGER REFERENCES games

);

CREATE TABLE games 
(
    id SERIAL PRIMARY KEY,
    team1 INTEGER REFERENCES teams,
    team2 INTEGER REFERENCES teams,
    ref INTEGER REFERENCES referees
);