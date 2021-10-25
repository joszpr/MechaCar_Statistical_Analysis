# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A multiple linear regression was performed with the 5 variables present in the sc_import data set(Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance and All Wheel Drive (AWD)) had any effects in the Miles Per Gallon (MPG) variable. Linear Regression can be used to test possible correlation between different variables. 

![I - Summary of Linear Regression](https://user-images.githubusercontent.com/85839235/138612331-937bed45-2da7-4206-ae3c-cd810b8da193.png)


**Summary Statistics** 
The statistics provided from the Linear Regression help us understand the relationship between the dependant variable and the independent variables. 

  - Slope. If the slope is 0 (there is not a significanty linear relationship) or not 0 (there may be a relationship between the variables). With this information, it can be determined how each variable may affect the equation. From the statistic, we can identify that Vehicle Length and Ground Clearance have slope higher than 0. 

Regarding AWD negative amount of -3, it may help to understand the assumptions of the linear regression. 
1.	The input data is numerical and continuous.
2.	The input data should follow a linear pattern.
3.	There is variability in the independent x variable. This means that there must be more than one observation in the x-axis and they must be different values.
4.	The residual error (the distance from each data point to the line) should be normally distributed.

Looking at the data and plotting each variable in relation to MPG, we can determine that not all of the variables have a linear relationship. AWD is a similar to a boolean value that has the least amount of linear relationship compared to MPG. 
![Ground Clearance](https://user-images.githubusercontent.com/85839235/138614601-b30b8fb8-7cf5-46b5-a269-aa33033d9b45.png)
![Spoiler Angle](https://user-images.githubusercontent.com/85839235/138614602-fdfe9f74-a772-4cf3-a280-6eb91b4befa3.png)
![Vehicle Length](https://user-images.githubusercontent.com/85839235/138614603-127e5463-02ec-4d1a-85a4-d82a0788f6f6.png)
![Vehicle Weight](https://user-images.githubusercontent.com/85839235/138614604-d134a404-d491-44de-9e5d-c0bc11eae47b.png)
![AWD](https://user-images.githubusercontent.com/85839235/138614606-d01c8320-c3d3-4f81-9e63-555295687831.png)

  - P-Values. We can also gather the variability with the invididual p-values of each variable in order to determine which of them provide a significant contribution to the linear model. In the statistics summary, Pr(>|t|) represents the probability that each coefficient contributes a random amount of variance to the linear model. With that information we can gather that Vehicle Length and Ground Clearance are statistically unlikely to provide random variance and may have significant impact on MPG. As far as the P-value of the equation in itself, it's 5.35e-11. Which is considerably smaller than our significance level of 0.05% Which means that the slope of our linear model is not zero.

  - R-Square. We can also use the r-squared value from the equation, which will range between 0 and 1. It can help us understand the likelihood that the equation can determine future data points. The r-squared value is 0.72, which can be interpreted as that about 72% variability of the dependent variable can be explained using the linear model. This linear model 

In conclusion to the summary statistics based on the Multiple Linear Regression, the models does a decent job in predicting the mpg of the MechaCar prototypes but also shows that there may be variables that are impacting the mpg of the vehicles that are not present in the current data. 


## Summary Statistics on Suspension Coils
An analysis was performed using data on the manufacturing specifications of the MechaCar suspension coils. The variance of the suspension coils must not exceed 100 pounds per square inch in order to meet the design specification of the vehicle. There are currently 3 manufacturing lots producing the suspension coils. 

![II - SC Summary Statistics](https://user-images.githubusercontent.com/85839235/138616009-3abe36b3-6941-4209-a8cb-d6a546ade086.png)
By calculating statistics of all the data from across all lots, we can identify that the average suspensions are around 1498.78 pounds per square inch, which is close to the design of 1500 pounds per square inch. There is a variance of 62.29 pounds per square inch observed. In order to identify if the difference in suspension coils is across all Manufacturing Lots, the same analysis was done by Lot. 

![III - Summary Statistics by Lot](https://user-images.githubusercontent.com/85839235/138616076-6a238802-d78f-43c2-a331-4c69bccccc47.png)
Looking at each individual lot statistics, we can identify that Lot 1 and Lot 2 are meeting the requirements of the suspension coils specifications. Lot 3 is presenting a higher degree of variance with 170. Altought the average coils produce by Lot 3 are close to ther 1500 pounds per square inch, it seems the are variations that may not meet the required manufacturing requirements for the MechaCar. 


## T-Tests on Suspension Coils

In a one-sample t-test, you compare the mean of the data from one group of to some hypothesized mean. In our case we used the 1500 PSI as our hypothesized mean and compared it to the mean of all manufacturing lots and also each invididual lot. 

![IV - T-Test](https://user-images.githubusercontent.com/85839235/138631103-0ce8373b-862a-4a1b-a5be-cfb98b6437f8.png)
In this calculation it showed little variance on the mean for each lot. It could be inferred that comparing it to the previous summary statistics, the mean of the coils are close to 1500 PSI but there it a higher variance between coils. 

## Study Design: MechaCar vs Competition

In order to compare the MechaCar with its competition we must do two main things; identify the vehicles in direct competition to the intended market and second, which variables can be measured to compare. 

For our data analysis comparison, we will focus on the variables to be measured in order to provide a comparison. 
According to the Environmental and Energy Study Institute1️⃣, factors like Materials, Ride Height, Wheels, Type of Transmission, Starter/Generator are variables that can affect vehicle efficiency. It would be wise to study those variables along with Vehicle length, Vehicle Weight, Spolier Angle, Ground Clearance (which is similar to Ride height) and AWD. 

If the data can be collected with competitors design, a Statistical Summary regarding each vehicle design would be benefitial as initial comparison.

We could develop a hypothesis that none of the different designs and variables affect the efficiency and performance of each vehicle. But we could compare each different design variable that can be measured in order to see if any of the hold any impact on efficiency and performance. if enough data is gathered by variable, we could measure MPG of each vehicle in comparison to different performance variable. 

If the conditions for a linear regression hold true, we could perform a multiple linear regression with each variable and compare the variability that each variable have in comparison to MPG. We could then perform a T-Test and Chi-squared Test in order to measure the difference in categorical groups. 

1️⃣ https://www.eesi.org/topics/vehicle-efficiency/description
