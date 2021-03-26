# Adult Data Analysis
![示意圖](./image/示意圖.png)
> 14 features & 1 categories in total
## `Features`：
* Age 
* Workclass
* Fnlwgt 
* Education
* Education_num
* Marital_status
* Occupation
* Relationship
* Race
* Sex
* Capital_gain
* Capital_loss
* Hours_perweek
* Native_country  
## `Categories`：
* Salary

## `Purpose`:
To see which features are prerequisite for people being paid more than 50k.

## `Insights`
> ##### Definition
> 50k and above : **High-Earners**
> Less or Equal to 50k : **Low-Earners**


![公司自雇者](./image/自雇者.png)

1.For people who are self-employed, **1/2** of them can earn more than *50k*. On the other hand, only **1/3 - 1/2** of staff in other workclass such local/state governments are high-earners. **Those who are self-employed tend to earn more than others.**

![公司自雇者](./image/受教育時間.png)
2. High-Earners receieved **20%** more than low-paid people on *education*.

![男性高薪](./image/男性高薪.png)
![女性高薪](./image/女性高薪.png)
3. From the above 2 talbes, it's obvious ratio of male earning salary 50k above is 3 times that of female. The pay difference between gender results from complex factors and this requires more data to further elaborate.


![年紀](./image/年紀.png)
**High-Earners** seems to be around 8 years older than **Low-Earners**. It could because of older people accumulated more working experience or expertise, they earn more. But this needs more information to prove!

![education](./image/education.png)
Pretty obvious, **Education** plays an important role in how much income one can have. For people who didn't go to senior hihg, there is little chance for them to be become a High-Earner in the future. 但每個學歷的基數原本就不一樣，以bachelors學位的人來說，雖然佔高薪族群中的最大來源，但有沒有可能是因為學士的母體相對大，因此能夠躋身高薪的量也相對多？

>![doctorate](./image/doctorate.png)
![hs_grad](./image/hs_grad.png)
![10th](./image/10th.png)
From the tables above, people with **Phd degree(doctorate)** are about **4** times more likely than **HS_graduate** to earn more than 50k, not to mention **10th** graders (just 7% of them succeed in marking more money)