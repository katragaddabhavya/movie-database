create database movie;
use movie;
create table Movie(
Title varchar(50),
BudgetInMillions int,
ReleaseDate varchar(20),
RevenueMillions int,
RatingAverage float
);

desc Movie;

insert into Movie values("Avatar",237,"10-12-2009",278,7.2);
insert into Movie values("Titanic",200,"18-11-1997",185,7.5);
insert into Movie values("The Avengers",220,"25-04-2012",152,7.4);
insert into Movie values("Jurassic World",150,"09-06-2015",151,6.5);
insert into Movie values("Furious 7",190,"01-04-2015",150,7.3);
insert into Movie values("The Avengers:Age of Ultron",280,"22-04-2015",141,7.3);
insert into Movie values("Iron Man 3",200,"18-04-2013",122,6.8);
insert into Movie values("Minions",74,"17-06-2015",11,6.4);
insert into Movie values("Captain America:Civil War",250,"27-04-2016",115,7.1);
insert into Movie values("Transformers: Dark of the Moon",195,"28-06-2011",112,6.1);
select * from Movie;
select Title from Movie;
select Title from Movie where Title="Jurassic World" and RatingAverage=6.5;
select Title from Movie where RatingAverage>=7;
select * from Movie where Title="%Avengers%";
select Title,RatingAverage from Movie where RatingAverage between 7 and 8;
select Title from Movie where BudgetInMillions>=250;
select Title,RatingAverage from Movie where RevenueMillions between 150 and 200;
select Title,ReleaseDate from Movie where Title like 'T%';
select sum(RevenueMillions) from Movie ;
select Title,RevenueMillions from Movie where RevenueMillions in (select min(RevenueMillions) from Movie);