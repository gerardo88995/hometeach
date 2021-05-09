with t1 as(
	select 
		dt,
		pm25,
		nth_value(pm25, 1) over win as nth_1,
		nth_value(pm25, 2) over win as nth_2,
		nth_value(pm25, 3) over win as nth_3,
		nth_value(pm25, 4) over win as nth_4,
		nth_value(pm25, 5) over win as nth_5,
		nth_value(pm25, 6) over win as nth_6,
		nth_value(pm25, 7) over win as nth_7,
		nth_value(pm25, 8) over win as nth_8,
		nth_value(pm25, 9) over win as nth_9,
		nth_value(pm25, 10) over win as nth_10,
		avg(pm25) over win as avg10
	from preprocess
	window win as (rows 10 PRECEDING)
),

t2 as(
	select 
		dt,
		pm25,
		((nth_1 - avg10) * (nth_1 - avg10) +
		(nth_2 - avg10) * (nth_2 - avg10) +
		(nth_3 - avg10) * (nth_3 - avg10) +
		(nth_4 - avg10) * (nth_4 - avg10) +
		(nth_5 - avg10) * (nth_5 - avg10) +
		(nth_6 - avg10) * (nth_6 - avg10) +
		(nth_7 - avg10) * (nth_7 - avg10) +
		(nth_8- avg10) * (nth_8 - avg10) +
		(nth_9 - avg10) * (nth_9 - avg10)+
		(nth_10 - avg10) * (nth_10 - avg10)) / 3.33 as var
	from t1
),

t3 as(
	select 
		datetime(dt, "start of day") as dt,
		sum( case 
					when pm25 >= var then 1
					else 0
					end) as test
from t2
group by datetime(dt, "start of day")
)

select 
	datetime(dt, "start of month") as dt,
	sum (test) as n_of_month
from t3
group by datetime(dt, "start of month")