//Creates database//
CREATE DATABASE Fitness;

//Creates tables//
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

//Adds values//
Use fitness;

INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 35),
(3, 'Alice Johnson', 24),
(4, 'Bob Brown', 30);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-06-14', 'Morning', 'Yoga'),
(2, 2, '2024-06-14', 'Afternoon', 'Cardio'),
(3, 3, '2024-06-14', 'Evening', 'Weight Training'),
(4, 4, '2024-06-14', 'Morning', 'Pilates');

//Updates WorkoutSessions//

UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Doe');

//Deletes member from WorkoutSessions//

DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');

//Deletes member from members//

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members
WHERE name = 'John Smith';
SET SQL_SAFE_UPDATES = 1;

