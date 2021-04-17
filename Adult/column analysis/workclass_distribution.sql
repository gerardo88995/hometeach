with amount as (
    select 
		count(*) as num_total
	from adult
	where workclass is not '?'	
)

select 
	workclass,
       round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	   num_total
from adult, amount
where workclass = 'Self-emp-inc'

UNION 

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Private'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Without-pay'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'State-gov'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Self-emp-not-inc'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Local-gov'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Federal-gov'

UNION

select 
	workclass,
    round(count(workclass) / cast(num_total as double ), 5)   as  ratio,
	num_total
from adult, amount
where workclass = 'Never-worked'
;

