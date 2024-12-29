--Find the Highest Grossing movie

SELECT TOP 1 film, worldwidegross 
FROM movie 
ORDER BY worldwidegross DESC;

--Calculate the Average Critics Score

SELECT AVG(criticsscore) AS average_critics_score 
FROM movie;

--List Movies Released After a Certain Year
SELECT film, yearmade 
FROM movie 
WHERE yearmade > 2015;

--List Movies Released Before a Certain Year

SELECT film, yearmade
FROM movie
WHERE yearmade < 2015;

--Calculate the Percentage of Gross from Domestic vs International Markets

SELECT film, 
       (domesticgross * 1.0 / worldwidegross) * 100 AS percent_domestic_gross, 
       (internationalgross * 1.0 / worldwidegross) * 100 AS percent_international_gross 
FROM movie;

--Find Movies with the Largest Drop-Off Between the First and Second Weekend

SELECT film, firstvssecondweekenddropoff 
FROM movie 
ORDER BY firstvssecondweekenddropoff DESC;

--List Movies with High Audience vs. Critics Deviance

SELECT film, audiencevscriticsdeviance 
FROM movie 
WHERE ABS(audiencevscriticsdeviance) > 5;
--Calculate the Total Budget and Gross for Each Category

SELECT category, 
       SUM(budget) AS total_budget, 
       SUM(worldwidegross) AS total_gross 
FROM movie 
GROUP BY category;

--Find Movies with a Budget Greater than a Specific Amount

SELECT film, budget 
FROM movie 
WHERE budget > 200;

--List All Sources for Movie Data

SELECT DISTINCT sources 
FROM movie;

--Calculate the Average Percentage of Budget Recovered

SELECT AVG(percentbudgetrecovered) AS average_percent_budget_recovered 
FROM movie;
