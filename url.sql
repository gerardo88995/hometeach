select 
	DISTINCT url
from url
where url REGEXP '[a-z]+://[a-z|0-9|-|_]+' 