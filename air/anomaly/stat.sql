SELECT
	"dewp" as name,
	max(露點) as max_stat,
	min(露點) as min_stat,
	avg(露點) as avg_stat
from cleanair2

union ALL

SELECT
	"temp" as name,
	max(氣溫) as max_stat,
	min(氣溫) as min_stat,
	avg(氣溫) as avg_stat
from cleanair2

union all 

SELECT
	"pressure" as name,
	max(氣壓) as max_stat,
	min(氣壓) as min_stat,
	avg(氣壓) as avg_stat
from cleanair2

union ALL

SELECT
	"iws" as name,
	max(風速 ) as max_stat,
	min(風速 ) as min_stat,
	avg(風速 ) as avg_stat
from cleanair2

union ALL

SELECT
	"is" as name,
	max(雨時) as max_stat,
	min(雨時) as min_stat,
	avg(雨時) as avg_stat
from cleanair2

union ALL

SELECT
	"ir" as name,
	max(雪時 ) as max_stat,
	min(雪時 ) as min_stat,
	avg(雪時 ) as avg_stat
from cleanair2