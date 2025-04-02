use brillica3;
select * from covid;
-- *********************************************************************************************************************************************************************
# Write a query to show the bottom 20 country by deaths
select country,sum(confirmed) as Total_sum from covid group by country order by total_sum limit 20;
-- -----------------------------------------------------------------------------------------------
# Show the average deaths by each who region
select `who region`,avg(deaths) avg_deaths from covid group by `who region`;
-- -----------------------------------------------------------------------------------------------
# Show the top 5 country base of active case
select country,sum(active) as Total_active from covid group by country order by total_active desc limit 5; 
-- ----------------------------------------------------------------------------------------------
# Show the sum of confirmed case by month name ?
select monthname(date) as Month_name,sum(confirmed) as Total_confirmed from covid group by month_name;
-- -----------------------------------------------------------------------------------------------
# Show the maximum deaths by country whose who region is south-east-asia
select country,max(deaths) as Max_deaths from covid where `who region` =  "South-East Asia" group by country order by max_deaths desc;
-- -----------------------------------------------------------------------------------------------
# Show the top 5 country base of recovered case
select country,sum(recovered) as Total_rec from covid group by country order by total_rec desc limit 5;
-- -----------------------------------------------------------------------------------------------
# Count total number of country whose country startswith'i'
select concat("Total_number of country  :-  " ,count(distinct(country))) as Total_country   from covid where left(country,1) ="i";
-- -----------------------------------------------------------------------------------------------
# Count total number of country whose country startswith 'p'
select concat("Total_number of country :-  ",count(distinct(country))) as Total_country   from covid where left(country,1) ="p";
-- -----------------------------------------------------------------------------------------------
# Count toal number of rows by each country
select country,count(country) as Total_country from covid group by country;
-- -----------------------------------------------------------------------------------------------
# Write a query to show the sum of confirmed case ,active ,deaths,recovered 
create view  country as  (
select country,`who region`,sum(confirmed) as Confirmed,sum(active) as Active, sum(deaths) as Deaths, sum(recovered) as recovered 
from covid group by country,`who region`);
-- -----------------------------------------------------------------------------------------------
select * from country;
-- -----------------------------------------------------------------------------------------------
# View : - View is a Virtual table in mysql which is used to create a temprory table in database known as a view
-- -----------------------------------------------------------------------------------------------
