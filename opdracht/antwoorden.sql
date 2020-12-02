-- Opdracht 1 
SELECT * FROM `videogamesales`
SELECT * FROM `videogamesales` WHERE 1
-- Opdracht 2 
SELECT COUNT(id) AS spellen_uit_de_database_zijn_uitgebracht_in_1999 FROM videogamesales WHERE year=1999
SELECT COUNT(platform) AS spellen_uit_de_database_zijn_uitgebracht_in_1999 FROM videogamesales WHERE year=1999
SELECT COUNT(name) AS spellen_uit_de_database_zijn_uitgebracht_in_1999 FROM videogamesales WHERE year=1999
-- Opdracht 3
SELECT COUNT(id) AS hoeveel_spelen_zijn_verkocht_in_Noord_Amerika FROM videogamesales WHERE genre="sports" AND NA_Sales
-- Opdracht 4
SELECT name,platform AS naam_en_het_platform_van_alle_spellen_die_zijn_uitgebracht_door_Nintendo_tussen_1990_en_2005 FROM videogamesales WHERE publisher="Nintendo" AND year>=1990 AND year<=2005
-- Opdracht 5
SELECT name,MAX(id) AS het_hoogste_verkocht_spel_wereldwijd FROM videogamesales WHERE Global_Sales
SELECT *,MAX(id) AS het_hoogste_verkocht_spel_wereldwijd FROM videogamesales WHERE Global_Sales
-- Opdracht 6 
SELECT AVG(id) AS gemiddeld_verkocht_in_het_genre_Puzzle_in_Europa FROM videogamesales WHERE genre="Puzzle" AND EU_Sales
-- Opdracht 7 
SELECT name,genre,publisher AS het_spel_dat_532_verkochte_spellen_heeft_in_Japan FROM videogamesales WHERE JP_Sales=532
-- Opdracht 8
SELECT count(id) AS totaal_spellen_verkocht_van_Nintendo_wereldwijd FROM videogamesales WHERE publisher="Nintendo" AND Global_Sales
-- Opdracht 9
SELECT name,year,publisher AS videogames_van_het_genre_Racing_door_Nintendo_of_Activision FROM videogamesales WHERE genre="Racing" AND publisher="Nintendo" OR publisher="Activision"
-- Opdracht 10
SELECT ROUND(AVG(id)) AS de_gemiddelde_verkoop_aantallen_in_Noord_Amerika_Europa_en_Japan FROM videogamesales WHERE NA_Sales AND EU_Sales AND JP_Sales
-- Opdracht 11
DELETE FROM videogamesales WHERE name="Halo 2" AND platform="XB"
-- Opdracht 12
DELETE FROM videogamesales WHERE year=2012 AND publisher="Ubisoft"
-- Opdracht 13
DELETE FROM videogamesales WHERE genre="Adventure" AND publisher="Nintendo"
-- Opdracht 14
DELETE FROM videogamesales WHERE publisher="Nintendo" AND Global_Sales<1000
-- Opdracht 15
DELETE FROM videogamesales WHERE year=1997 AND NA_Sales>200.000