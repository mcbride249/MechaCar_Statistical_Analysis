# MechaCar_Statistical_Analysis

## Deliverable 1 – Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/92111396/153313295-542f9c27-6fb5-4e79-9287-6080dbff1434.png)


1. Ground clearance and vehicle length and to a lesser extent vehicle weight are statistically unlikely to provide random amounts of variance to the linear model, meaning that all three coefficients have a significant impact on miles per gallon (mpg) for the MechaCar protypes. This is based on the probability coefficient (Pr(>|t|) value being smaller for the ground clearance, vehicle length, and vehicle weight variables. The other variables, spoiler angle and AWD, do appear to contribute a random amount of variance to the linear model, which is presented in their probability coefficient being larger.

2. The slope of the linear model is not considered to be 0. This is because the p-Value which measures the probability that a particular statistical measure will be greater than or equal to 0, or more simply, tells us the likelihood that we would see similar results if we tested our data again, is calculated to be 5.35e-11. The p-value of 5.35e-11 is significantly smaller than the assumed (normal) p-value of 0.05. What this means is that the probability of being wrong that these variables are random is extremely unlikely.

3. The linear model does predict miles per gallon (mpg) effectively approximately 71.4% of the time. This is based on the calculated r-squared value, which in this case was 0.7149, which represents how well the regression model represents real world data, falling between a range of 0 and 1, where 0 represents no predictability, and 1 represents complete predictability. In this case, the r-squared value of 0.7149 demonstrates the strength of the correlation to be strong. 


## Deliverable 2 - Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictated that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the total_summary dataframe that was created, we can see that the variance total variance for all three lots was 62.29356, which falls well below the 100-psi threshold. Based on a per lot basis however, we can see in the lot_summary dataframe, that the variance does differ by lot number. Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respectively, which both fall within the variance tolerance of 100-psi. Lot 3 however has a appreciably higher variance of 170.2861224, which exceeds the variance toleration dictated in the design specifications. This means that Lot 3 will have to be removed for production implementation, but Lot 1 and Lot 2 could be used in production.  

**Total_Summary**
![image](https://user-images.githubusercontent.com/92111396/153315236-52fa8f7d-e2e0-4e73-9def-a5cbc06f3894.png)

**Lot_Summary**
![image](https://user-images.githubusercontent.com/92111396/153315278-35ae9bd1-19d1-4859-91da-2a93085cfab9.png)






