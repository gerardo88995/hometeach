# Air PM2.5 Analysis (Beijing)

![示意圖](./image/示意圖.png)

> 4 time features & 1 PM2.5 (value) 
## `Features`：
* Year 
* Month
* Day  
* Hour
## `Categories`：
* PM2.5

![1](./image/pm25_1.png)
![2](./image/pm25_2.png)
(*Source: U.S. Environmental Protection Agency*)

## `Purpose` :
Finding at what time we have the **highest concentration** of pm2.5
## `Insights` :
> **`0. Statistics`**
![statistics](./image/statistics.png) 
(statistics.sql)
On average, concentration of pm2.5 is alomst `100`. During *2010-14*, the air quality in Beijing could be classified `unhealthy` based on US EPA standards.

 > **`1. Monthly Distrubution`**
 ![月分析](./image/濃度月分析.png) 
(analysis_bymonth.sql)
From the table, it's obvious every year
from October to March, the concentration of pm2.5 will get higher compared to the rest of time.
![地圖](./image/pm2.5地圖.png)
![excerpt](./image/excerpt_nyt.png) 
`Every year, the seasonal wind originating from Mongolia blows the sand & dust all the way to Northern part of China and even Korean Peninsula.`

> **`2. Yearly Distribution`**
![年分析](./image/濃度年分析.png) 
By group the data by year form 2010-14, We still don't see too much improvement on air quality. The concentration is still too high for human beings.
![20210409](./image/20210409.png) 
7 years from then, the air pollution issue is still challengin in Beijing.

## Conclusions:




