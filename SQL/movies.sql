 /* Delete the tables if they already exist */
drop table if exists Ratings;
drop table if exists Movies;
drop table if exists Reviewers;
/* Create the schema for our tables */
CREATE TABLE "Movies" (
	"id"	INTEGER,
	"title"	TEXT NOT NULL,
	"year"	INTEGER NOT NULL,
	"director"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "Reviewers" (
	"id"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "Ratings" (
	"rid"	INTEGER,
	"mid"	INTEGER,
	"rating"	INTEGER NOT NULL CHECK("rating" <= 5 and "rating" >= 1), /*check: range check consistent*/
	"date"	TEXT,
	PRIMARY KEY("mid","rid"),
	FOREIGN KEY("mid") REFERENCES "Movies"("id"),
	FOREIGN KEY("rid") REFERENCES "Reviewers"("id")
);
/* Populate the tables with some data */
insert into Movies values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movies values(102, 'Star Wars: Episode IV - A New Hope', 1977, 'George Lucas');
insert into Movies values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movies values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movies values(105, 'Titanic', 1997, 'James Cameron');
insert into Movies values(106, 'Snow White and the Seven Dwarfs', 1937, 'David Hand');
insert into Movies values(107, 'Avatar', 2009, 'James Cameron');
insert into Movies values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');
insert into Movies values(109, 'The Shawshank Redemption', 1994, 'Frank Darabont');
insert into Movies values(110, 'The Godfather', 1972, 'Francis Ford Coppola');
insert into Movies values(111, 'The Dark Knight', 2008, 'Christopher Nolan');
insert into Movies values(112, 'The Godfather: Part II', 1974, 'Francis Ford Coppola');
insert into Movies values(113, '12 Angry Men', 1957, 'Sidney Lumet');
insert into Movies values(114, 'Pulp Fiction', 1994, 'Quintin Tarantino');
insert into Movies values(115, 'The Matrix', 1999, 'The Wachowskis');
insert into Movies values(116, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 'Irvin Kershner');
insert into Movies values(117, 'Saving Private Ryan', 1998, 'Steven Spielberg');
insert into Movies values(118, 'Hamilton', 2020, 'Thomas Kail');
insert into Movies values(119, 'The Usual Suspects', 1995, 'Bryan Singer');
insert into Movies values(120, 'Back to the Future', 1985, 'Robert Zemeckis');


insert into Reviewers values(201, 'Sarah Martinez');
insert into Reviewers values(202, 'Daniel Lewis');
insert into Reviewers values(203, 'Brittany Harris');
insert into Reviewers values(204, 'Mike Anderson');
insert into Reviewers values(205, 'Chris Jackson');
insert into Reviewers values(206, 'Elizabeth Thomas');
insert into Reviewers values(207, 'James Cameron');
insert into Reviewers values(208, 'Ashley White');


insert into Ratings values(201, 101, 2, '2021-01-22');
-- insert into Ratings values(201, 101, 4, '2021-01-27');
insert into Ratings values(202, 106, 4, null);
insert into Ratings values(203, 103, 2, '2021-01-20');
insert into Ratings values(203, 108, 4, '2021-01-12');
-- insert into Ratings values(203, 108, 2, '2021-01-30');
insert into Ratings values(204, 101, 3, '2021-01-09');
insert into Ratings values(205, 103, 3, '2021-01-27');
insert into Ratings values(205, 104, 2, '2021-01-22');
insert into Ratings values(205, 108, 4, null);
insert into Ratings values(206, 107, 3, '2021-01-15');
insert into Ratings values(206, 106, 5, '2021-01-19');
insert into Ratings values(207, 107, 5, '2021-01-20');
insert into Ratings values(208, 104, 3, '2021-01-02');
