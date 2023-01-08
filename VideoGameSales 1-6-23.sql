#Which genre sold the most games between 2000 - 2017 in each country?
#Exlcude game sales that are less than .5

use video_game_sales;

SELECT 
    *
FROM
    vgsalesglobale;

SELECT 
    Name, Year, Genre, NA_Sales, EU_Sales, JP_Sales
FROM
    vgsalesglobale;
    
#Check for any NULL values
SELECT
	Name,
    Year,
    Genre,
    Publisher,
	NA_Sales,
    EU_Sales,
    JP_Sales
FROM
	vgsalesglobale
WHERE
	Name IS NULL;

#Finding game sales that were before the year 2000 and after 2017

SELECT 
    Year
FROM
    vgsalesglobale
WHERE
    Year > 2017;
    
SELECT
	Year
FROM
	vgsalesglobale
WHERE
	Year < 2000;

#Deleted game sales that were before the year 2000 and after 2017

DELETE FROM vgsalesglobale 
WHERE
    Name = 'Imagine: Makeup Artist';
    
DELETE FROM vgsalesglobale
WHERE
	Year < 2000;

#Fetch NA, EU, and JP sales that are >= .5. Order by Genre to see how many genres were extracted.
SELECT
	Name,
    Year,
    Genre,
    Publisher,
    NA_Sales,
    EU_Sales,
    JP_Sales
FROM
    vgsalesglobale
WHERE 
	NA_Sales >= .5 AND EU_Sales >= .5 AND JP_Sales >= .5
ORDER BY Genre ASC;