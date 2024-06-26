// Creates a database //
CREATE DATABASE Music;

USE music;

// Albums table//
CREATE TABLE Albums (
	album_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artists_id INT NOT NULL,
    genre_id INT NOT NULL,
    release_year DATE NOT NULL,
    tracks INT NOT NULL,
    FOREIGN KEY (artists_id) REFERENCES Artists(artists_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

// Genre Table//
CREATE TABLE Genre (
	genre_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

// Artists Table//
CREATE TABLE Artists (
	artists_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio VARCHAR(255) NOT NULL,
    age INT NULL
   
);


//Modifies Albums Table to add additional column//
USE music;

ALTER TABLE Albums
ADD COLUMN duration INT NOT NULL



// Establishes foreign key contrainsts //

USE music;

ALTER TABLE Albums
ADD CONSTRAINT artists_id
FOREIGN KEY (artists_id) REFERENCES Artists(artists_id),

ADD CONSTRAINT genre_id
FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
