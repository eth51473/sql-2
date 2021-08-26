ALTER TABLE animals
ADD location VARCHAR(80)

INSERT INTO animals (name, type, age, location) 
VALUES ('Archie', 'alligator', 22, 'swamp'), ('Carl', 'Cat', 3, 'Rail yard'), 
-- ('Kevin', 'snipe', 6, 'Paradise Falls');

ALTER TABLE animals 
RENAME COLUMN type TO species

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(60);

SELECT COUNT(*),g.name AS genre FROM track t  
JOIN genre g
ON g.genre_id = t.genre_id
GROUP BY g.name
ORDER BY g.name;