with eskimo as(
	select 
		count(*) as ttl
	from adult
	where  race = 'Asian-Pac-Islander' 
)

select 
	race,
	round( count(race) / cast(ttl as double), 3) as ratio,
	ttl
from adult, eskimo
where race = 'Asian-Pac-Islander' and salary  = '<=50K';
