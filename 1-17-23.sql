#Which genre sold the most games between 2000 - 2017 in each country?
#Game sales must be .5 or more in each country

use video_game_sales;

SELECT 
    *
FROM
    vgsalesglobale;

SELECT 
    Name, 
    Year, 
    Genre, 
    NA_Sales, 
    EU_Sales, 
    JP_Sales
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
    NA_Sales IS NULL OR EU_Sales IS NULL OR JP_Sales IS NULL
    OR Name IS NULL OR Genre IS NULL OR Publisher IS NULL;

#Data Exploration
#Top selling game in each country
SELECT
    Name,
    NA_Sales
FROM
    vgsalesglobale
ORDER BY NA_Sales DESC
LIMIT 1;

SELECT
    Name,
    EU_Sales
FROM
    vgsalesglobale
ORDER BY EU_Sales DESC
LIMIT 1;

SELECT
    Name, 
    JP_Sales
FROM
    vgsalesglobale
ORDER BY JP_Sales DESC
LIMIT 1;

#Total sales for each country by year
SELECT
    Year,
    SUM(NA_Sales)
FROM
    vgsalesglobale
GROUP BY
    Year
ORDER BY 
    Year DESC;

SELECT
    Year,
    SUM(EU_Sales)
FROM
    vgsalesglobale
GROUP BY
    Year
ORDER BY 
    Year DESC;

SELECT
    Year,
    SUM(JP_Sales)
FROM
    vgsalesglobale
GROUP BY
    Year
ORDER BY
    Year DESC;

SELECT
    Name,
    NA_Sales,
    EU_Sales,
    JP_Sales
FROM
    vgsalesglobale;

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

#Fetch video game sales between 2000 - 2017. Order by year in descending order
SELECT
    name,
    Genre,
    Publisher,
    Year,
    NA_Sales,
    EU_Sales,
    JP_Sales
FROM
    vgsalesglobale
WHERE
    Year between 2000 and 2017
ORDER BY
    Year DESC;

#Fetch NA, EU, and JP sales that are >= .5. Order by Genre (Ascending) to see how many rows are extracted.
SELECT
    Name AS Game,
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
