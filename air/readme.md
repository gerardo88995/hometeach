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

## `Conclusions:`
According to the analysis above, every year in **`SPRING time (Oct. - Mar.)`**, the concentration of pm2.5 will rise with the `seasonal wind from Gobi, Mongolia` bringing lot of dust.
 
# `Anomaly Detection:`
![stdev](./image/stdev.png) 
According to NASA's definition, climate events whose value exceed 3-time sigma (called 3-sigma event) can be seen as    **`climate anomaly`**. This kind of event is extremely rare in the past.
![definition](./image/definition.png)

## **`Anomaly Analysis of Variable Relevance`**

![stat](./image/stat.png)
(stat.sql)

-> The table shows us the `boundary` and `average number` of the **6** variables.

## DEWP VS others:
> **`DEWP vs TEMP`**
![dew_temp](./image/dew_temp.png)
(dewp_temp.sql)
![dewp_temp_py](./image/dewp_temp_py.png)

> **`DEWP vs PRESSURE`**
![dew_pressure](./image/dewp_pressure.png)
(dewp_pressure.sql)
![dew_pressure](./image/dewp_pressure_py.png)

> **`DEWP vs IWS`**
![dewp_iws](./image/dewp_iws.png)
(dewp_iws.sql)
![dewp_iws_py](./image/dewp_iws_py.png)


> **`DEWP vs IS`**
![dewp_is](./image/dewp_is.png)
(dewp_is.sql)
![dewp_is_py](./image/dewp_is_py.png)

>**`DEWP vs IR`**
![dewp_ir](./image/dewp_ir.png)
(dewp_ir.sql)
![dewp_ir_py](./image/dewp_ir_py.png)

## TEMP VS others:
> **`TEMP vs PRESSURE`**
![temp_pressure_py](./image/temp_pressure_py.png)

> **`TEMP vs IWS`**
![temp_iws](./image/temp_iws.png)
(temp_iws.sql)
![temp_iws_py](./image/temp_iws_py.png)

> **`TEMP vs IS`**
![temp_is](./image/temp_is.png)
(temp_is.sql)
![temp_is_](./image/temp_is_py.png)

> **`TEMP vs IR`**
![temp_ir](./image/temp_ir.png)
(temp_ir.sql)
![temp_ir_py](./image/temp_ir_py.png)
## IWS VS others:
> **`IWS vs IS`**
![iws_is](./image/iws_is.png)
(iws_is.sql)
![iws_is_py](./image/iws_is_py.png)


> **`IWS vs IR`**
![iws_ir](./image/iws_ir.png)
(iws_ir.sql)
![iws_ir_py](./image/iws_ir_py.png)

> **`IS vs IR`**
![is_ir](./image/is_ir.png)
(is_ir.sql)
![is_ir_py](./image/is_ir_py.png)

## **Summary 1**
Above, we try to see if there is any anomalies exist between any 2 different varaible, for example like Dew Point vs Temperature **or** Wind Speed vs Pressure.
![bivariate](./image/bivariate.png)

## `Single Variable Anomaly Analysis`
> **`1. Dew Point`**

![dewp](./image/dewp2.png)

> **`2. Temperature`**

![temp](./image/temp.png)

> **`3. Pressure`**

![pressure](./image/pressure.png)

> **`4. Iws`**

![iws](./image/iws.png)

> **`5. IS`**

![is](./image/is.png)

> **`6. IR`**

![ir](./image/ir.png)

## **Summary 2**
Here, we set **`3x/4x`** standard deviations as benchmarks to detect anomalies in each variable. Then, we visualize them with scatter charts.
![dataframe](./image/dataframe.png)

 Then we made a bar chart below to display "**`the number of abonormal days each year`**". 

![dewp1](./image/dewp1.png)
![ir1](./image/ir1.png)
![is1](./image/is1.png)
![temp1](./image/temp1.png)
![pres1](./image/pres1.png)
![iws1](./image/iws1.png)



![3x_var](./image/3x_var.png)
(3times_var.sql)
![n_of_anomalies](./image/n_of_anomalies.png)





















