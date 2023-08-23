## Product_info

create database Ecommerse_website;
use Ecommerse_website;
drop table product_info;
create table product_info(
pr_id int not null,
product_name varchar(25),
constraint pk_id primary key(pr_id)
);
insert into product_info values(1001,"Blog"),(1002,"youtube"),(1003,"Education");
select * from product_info;
drop table product_info_likes;
create table product_info_likes(
user_id int not null,
pr_id int not null,
liked_data date,
constraint fk_id foreign key(pr_id) references product_info(pr_id)
);
insert into product_info_likes values(1, 1001, "2023-08-14"),
(3, 1002, "2021-06-22");
select * from product_info_likes;
select * from product_info as pi left join product_info_likes as pil
on pi.pr_id = pil.pr_id
where pil.pr_id is null;

