##MYSQL Assignment
create database AI_Tools;
use AI_Tools
create table skills(
id int not null,
technology varchar(25)
);
insert into skills values(1,"DS"),(1,"Tableau"),(1,"Sql"),(2,"R"),(2,"power BI"),(1,"python");
select * from skills;
## To display any three skills of an employee
select id,count(*) cnt from skills where technology in("sql","python","R","ds") group by id;
select id from(select id,count(*) cnt from skills where technology in("python","R","ds") group by id) required_skils
where cnt = 2;
