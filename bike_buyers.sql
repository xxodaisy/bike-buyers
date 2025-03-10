--customer demographics analysis

--percentage of marital status
select 
	marital_status, 
	count(*) as total_customer,
	round((count(*) * 100.0/ (select count(*) from bike_buyers)),2) as percentage
from
	bike_buyers
group by
	marital_status

--percentage of children
select
	children,
	count(*) as total_customer,
	round((count(*) *100.0/ (select count(*) from bike_buyers)),2) as percentage
from
	bike_buyers
group by 
	children
	
--percentage of education
select 
	education,
	count(*) as total_customer,
	round((count(*) *100.0/ (select count(*) from bike_buyers)),2) as percentage
from
	bike_buyers
group by 
	education
	
--percentage of income
select 
	income,
	count(*) as total_customer,
	round((count(*) *100.0 / (select count(*) from bike_buyers)),2) as percentage
from 
	bike_buyers
group by
	income
order by
	percentage desc
	
--percentage of age
select
	case
		when age < 30 then 'under 30 years'
		when age between 30 and 50 then 'between 30-50 years'
		else 'above 50 years'
	end as age_group,
	count(*) as total_customer,
	round((count(*) *100.0/(select count(*) from bike_buyers)),2) as percentage
from 
	bike_buyers
group by
	age_group
	
-- Effect of occupation on bike purchases
select
	occupation,
	count(*) as total_customer
from 
	bike_buyers
where 
	purchased_bike = 'Yes'
group by
	occupation

--the impact of home owner on bike purchases
select
	home_owner,
	count(*) as total_customer
from 
	bike_buyers
where 
	purchased_bike = 'Yes'
group by
	home_owner

--the impact of number of cars on bike purchases
select 
	cars,
	count(*) as total_customer
from 
	bike_buyers
where 
	purchased_bike = 'Yes'
group by
	cars
	
--the impact of commute distance on bike purchases
select
	commute_distance,
	count(*) as total_customer
from 
	bike_buyers
where
	purchased_bike = 'Yes'
group by
	commute_distance
order by
	total_customer desc
	
--geographic area analysis
select
	region,
	count(*) as total_customer
from
	bike_buyers
where 
	purchased_bike = 'Yes'
group by
	region
order by total_customer desc
