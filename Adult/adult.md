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


##欄位分析:
為什麼選ab
不選c
-不夠均勻


## `Insights`
> ##### Definition
> 50k and above : **High-Earners**
> Less or Equal to 50k : **Low-Earners**

> `1.Age`![年紀](./image/年紀.png)
(age.sql)
![年齡分佈](./image/年齡分佈.png)
(age_range.sql)
![世代](./image/generation_gap.png)
**High-Earners** seems to be around 8 years older than **Low-Earners**. It could be because of older people accumulated more working experience or expertise, they earn more. 
However, from the second chart, we found that people in their 30s earned less than those during 1979-1994. Baby-boomers seemed to enjoy more economic growth.

>`2.Workclass`
![工階分布](./image/workclass分佈.png)
![公司自雇者](./image/自雇者.png)
(self.employ)
For people who are self-employed, **1/2** of them can earn more than *50k*. On the other hand, only **1/3 - 1/2** of staff in other workclass such local/state governments are high-earners. **Those who are self-employed tend to earn more than others.**

>`3.Education`
![學歷分布](./image/education_distribution.png)
![doctorate](./image/doctorate.png)
![hs_grad](./image/hs_grad.png)
![10th](./image/10th.png)

From the tables above, people with **Phd degree(doctorate)** are about **4** times more likely than **HS_graduate** to earn more than 50k, not to mention **10th** graders (just 7% of them succeed in marking more money)

>`4.Education Time & Race`
![受教時間](./image/受教育時間.png)
(education_time)
High-Earners receieved **20%** more time than low-paid people did on *education*.
![亞洲人愛讀書](./image/亞洲人愛讀書.png)
After some sql query, it's obvious that asian people in US spent the most time on taking education.
![教育-薪水](./image/教育-薪水.png)
（source:https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4534330/) Several research indicate that **people with higher education level tend to earn more** than others. And this principle applies to male & female.
![種族分布](./image/種族分布.png)
![白人](./image/白人.png)
![黑人](./image/黑人.png)
![亞太](./image/亞太.png)
![印地安人](./image/印地安人.png)
As we can see from the table, **Whites** are the **mainstream ethnic group** in US society 1966. And traditionally, white people are considered the ones that have the most resources to have a higher income than other groups. In the following tables, we found that 74.4% of white people are **low-earners**, the ratio is lower than Indians & Blacks. However, **Asian-Pac-Islander** surprisingly has lower rate of being low-earners than whites.
`Some may attribute the acheivement to Asian parents' emphasis of education on their kids.`

>`5.Occuaption`
![Occupation](./image/職業分佈.png)
(occupation_distribution.sql)
* ？問題同上，如何做出組內比例地查詢

>`6.Capital_gain & Capital_loss`
![淨資本利得](./image/net_ranking.png)
(capital_gain_by_education.sql)
From the table, we can see there is a correaltion between education levle and net capital gain. People with higher education degree tend to gain more on capital income. We can that these people have more access to financial knowledge in school, which can help them perform better in the market. 
**However** people from **preschool and 10th high school** earn more than **doctorate**. Is it because they were luckier or there are some key investment know-how that people cann't from studies in shcool?

>`7. Sex`
![男性高薪](./image/男性高薪.png)
(male.sql)
![女性高薪](./image/女性高薪.png)
(female.sql)
![性別比例](./image/性別比例.png)
(sex_distribution.sql)
![gender_gap](./image/gender_gap.png)
a) From the above 2 talbes, it's obvious ratio of male earning salary 50k above is 3 times that of female. 
   b) The phenomenon of pay-inequality between male & female has been existed for decades.
   In 1996, male earn **33%** more than their female counterpart. This could resulted from **gender descrimination** in workplaces and female's **lack of education and skill traning** for certain specialized jobs.

>`8.Marital_status`
![婚姻狀態分佈](./image/婚姻狀態分佈.png)

>`9. Relationship`
![家庭角色分佈](./image/家庭角色分佈.png)

























