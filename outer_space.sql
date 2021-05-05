-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moons TEXT[]
);

CREATE TABLE space_info
(
  id SERIAL PRIMARY KEY,
  planet INTEGER REFERENCES planets
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
);

INSERT INTO planets
  (name, galaxy, moons)
VALUES
  ('Earth', 'Milky Way', '{"The Moon"}'),
  ('Mars', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 'Milky Way', '{}'),
  ('Neptune', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 'Milky Way', '{}'),
  ('Gliese 876 b', 'Milky Way', '{}');
INSERT INTO space_info
  (planet, orbital_period_in_years, orbits_around)
VALUES
  (1,1.00, 'The Sun'),
  (2,1.88, 'The Sun'),
  (3,0.62, 'The Sun'),
  (4,164.8, 'The Sun'),
  (5,0.03, 'Proxima Centauri'),
  (6,0.23, 'Gliese 876'),