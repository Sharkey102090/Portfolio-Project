--CREATING TABLES FOR THE DATA

CREATE TABLE movie
(
    film varchar(255) NOT NULL PRIMARY KEY,
    category varchar(20) NOT NULL,
    worldwidegross int NOT NULL,
    percentbudgetrecovered int NOT NULL,
    criticsscore int NOT NULL,
    audiencescore int NOT NULL,
    audiencevscriticsdeviance int NOT NULL,
    budget int NOT NULL,
    domesticgross int NOT NULL,
    internationalgross int NOT NULL,
    openingweekend int NOT NULL,
    secondweek int NOT NULL,
    firstvssecondweekenddropoff int NOT NULL,
    grossfromopeningweekend int NOT NULL,
    grossfromdomestic int NOT NULL,
    grossfrominternational int NOT NULL,
    budgetopeningweekend int NOT NULL,
    yearmade int NOT NULL,
    sources text NOT NULL
);


--select * from movie
--drop table movie