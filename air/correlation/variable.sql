select
	year,
	round(風速),
	round(avg(pm25), 2) as avg_pm25,
	round(avg(露點), 2)  as avg_露點,
	round(avg(氣溫), 2)  as avg_氣溫,
	round(avg(氣壓), 2)  as avg_氣壓,
	round(avg(雪時), 2)  as avg_雪時,
	round(avg(雨時), 2)  as avg_雨時,
	風向
from air
where pm25 is not null
group by  year, round(風速)
;
