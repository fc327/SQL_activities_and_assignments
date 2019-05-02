use sakila;
select * from actor;
select actor_id, first_name, last_name from actor where first_name = "Joe";
select last_name from actor where last_name like "%gen%";
select first_name, last_name from actor where last_name like "%li%"
order by last_name; 

select * from country;
select country_id, country from country where country in ("Afghanistan", "Bangladesh", "China");

select * from actor;
alter table actor 
add column description blob;
alter table actor drop column description;

select last_name, count(last_name) from actor 
group by(last_name)  
having count(last_name) >= 2;
select first_name from actor where first_name = "Groucho";
update actor set first_name = "Harpo" where first_name = "Groucho" and last_name = "Williams"; 
select * from actor where first_name = "Harpo";
update actor set first_name = "Groucho" where first_name = "Harpo" and last_name = "Williams";

show create table address;
select first_name, last_name, address from staff join address on address.address_id = staff.address_id;
select first_name, sum(payment.amount) from staff join payment on payment.staff_id = staff.staff_id 
where payment.payment_date like "2005-08-%%" group by(staff.staff_id);

select title, actor_id from film inner join film_actor on film.film_id = film_actor.film_id;

select title, release_year, rating from film where title = "Hunchback Impossible";

select first_name, last_name from customer order by last_name;
alter table customer add column total_amount_paid varchar(50);
select customer_id, amount from payment;
select first_name, last_name from customer join payment on customer.customer_id = payment.customer_id;
select last_name, count(last_name) from customer group by(last_name); 

select title 
from film 
where language_id in
( 
select language_id
from language 

