# *Car Data Analysis*
> **6** features & **4** categories in total
## `Features`：
* Selling Price  
* Maintenance Cost  
* Doors  
* Persons
* Lug-boot
* Safety  
## `Categories`：
* Unacc
* Acc
* Good
* Vgood

## `Insights` :
>Here we define a good car as a car with a rating of `vgood or good`
>a bad car : `unacc or acc`
 1. For good cars, they must come with safety `"med" and above`. `Safety` is a pretty accurate feature we can use to predict whether it's a good car or not. 
 On the other hand, "selling_price" and "maintenance" are both important feature for judment. Most of the goods are charaterized with **low** `selling_price & maintenance_cost`.
 2. For bad cars, most of their selling_price & maintenance are `high and above`. Compared to good ones, some of them got **low safety** ratings.
 3. In general, we found that to be qualified as a **Good Car**, safety is the most important feature.And they should avoid `extermely high price and maintenance cost`.

