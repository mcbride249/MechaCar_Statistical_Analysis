# MechaCar_Statistical_Analysis

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## **Project Overview**

The purpose of this project was to perform retrospective analysis of historical data, analytical verification of current automotive specifications, and study design of future project testing, as part of the data analytics team at AutosRUs using the programming language R. The analysis must be based on a statistical backbone, a quantitative metric, with a clear interpretation of the results. The analysis required a production of the summary statistics of different variables, visualizations of different data sets, and finally our own interpretation of the statistical test results. In addition to this, the project required a proposal of our own study design, hypothesis and analysis workflow in order to improve the AutosRUs manufacturing process.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## **Resources**

-Data Source: MechaCar_mpg.csv; Suspension_Coil.csv.  

-Software: RStudio; R. 

-Resources: https://www.r-project.org/other-docs.html.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## **Module 15 - Challenge** 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## **Purpose**

The purpose of this challenge  was to help Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team in production of AutosRUs’ newest prototype, the MechaCar. The MechaCar is currently suffering from production troubles that are blocking the manufacturing team’s progress, and upper management has directed Jeremy and his team to assist. 

In this challenge, we were tasked to assist Jeremy and the data analytics team do the following:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a    summary interpretation of the findings.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Deliverable 1 – Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/92111396/153313295-542f9c27-6fb5-4e79-9287-6080dbff1434.png)
https://github.com/mcbride249/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%201%20-%20Image%201.png


1. Ground clearance and vehicle length and to a lesser extent vehicle weight are statistically unlikely to provide random amounts of variance to the linear model, meaning that all three coefficients have a significant impact on miles per gallon (mpg) for the MechaCar protypes. This is based on the probability coefficient (Pr(>|t|) value being smaller for the ground clearance, vehicle length, and vehicle weight variables. The other variables, spoiler angle and AWD, do appear to contribute a random amount of variance to the linear model, which is presented in their probability coefficient being larger.

2. The slope of the linear model is not considered to be 0. This is because the p-Value which measures the probability that a particular statistical measure will be greater than or equal to 0, or more simply, tells us the likelihood that we would see similar results if we tested our data again, is calculated to be 5.35e-11. The p-value of 5.35e-11 is significantly smaller than the assumed (normal) p-value of 0.05. What this means is that the probability of being wrong that these variables are random is extremely unlikely.

3. The linear model does predict miles per gallon (mpg) effectively approximately 71.4% of the time. This is based on the calculated r-squared value, which in this case was 0.7149, which represents how well the regression model represents real world data, falling between a range of 0 and 1, where 0 represents no predictability, and 1 represents complete predictability. In this case, the r-squared value of 0.7149 demonstrates the strength of the correlation to be strong. 


## Deliverable 2 - Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictated that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the total_summary dataframe that was created, we can see that the variance total variance for all three lots was 62.29356, which falls well below the 100-psi threshold. Based on a per lot basis however, we can see in the lot_summary dataframe, that the variance does differ by lot number. Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respectively, which both fall within the variance tolerance of 100-psi. Lot 3 however has a appreciably higher variance of 170.2861224, which exceeds the variance toleration dictated in the design specifications. This means that Lot 3 will have to be removed for production implementation, but Lot 1 and Lot 2 could be used in production.  

**Total_Summary**

![image](https://user-images.githubusercontent.com/92111396/153315236-52fa8f7d-e2e0-4e73-9def-a5cbc06f3894.png)
https://github.com/mcbride249/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%202%20-%20Image%201.png


**Lot_Summary**

![image](https://user-images.githubusercontent.com/92111396/153315278-35ae9bd1-19d1-4859-91da-2a93085cfab9.png)
https://github.com/mcbride249/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%202%20-%20Image%202.png


## Deliverable 3 - T-Tests on Suspension Coils

Based on the combine lot t-test, we can see that the p-value is equal to 0.06028 which is larger than the normal significance level of 0.05, suggesting that there is no significant linear relationship and that the effect the PSI has is based on random chance and error. Ultimately, this means that the null hypothesis must be accepted (the null hypothesis is failed to be rejected) as there is not enough evidence to support its rejection.  


**Combined Lot T-Test**

![image](https://user-images.githubusercontent.com/92111396/153320193-b534b6f1-2256-4e62-9a54-48689184be18.png)
https://github.com/mcbride249/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%203%20-%20Image%201.png


**Lot 1**
The p-value for Lot 1 is equal to 1, signifying an extremely strong correlation between the Lot 1 PSI and the population mean of 1500-psi. This is further supported by the fact that the Mean PSI for Lot 1 was itself 1500, demonstrating that there is no statistical difference between the sample of Lot 1 and the population mean. 


**Lot 2**
The p-value for Lot 2 is equal to 0.6072, once again signifying a strong correlation between the Lot 2 PSI and the population mean of 1500-psi. The Mean PSI for Lot 2 was 1500.20, which is almost coequal to the population mean of 1500. Similar to Lot 1, we must fail to reject the null hypothesis.  


**Lot 3**
Lot 3 presents a different representation than the other two lots. In varies so dramatically from the results for Lot 1 and Lot 2, that it dramatically impacted the overall p-value for the combined lots, which is evidenced by the fact that it had dramatically larger variance than the other two lots. Based on the p-value presented of 0.04168, we must reject the null hypothesis as the evidence suggests that there is a very weak correlation between the sample PSI of Lot 3 and the population mean. 


**Individual Lot T-Tests**

![image](https://user-images.githubusercontent.com/92111396/153320327-6a15ce9c-f39c-49ee-b3f7-bf250bfea512.png)
https://github.com/mcbride249/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%203%20-%20Image%202.png


## Deliverable 4 - Study Design: MechaCar vs Competition

The statistical study would need to be designed that compared various metrics of a specific MechaCar model against specific model from the competition. A unique hypothesis would need to be developed for each specific metric that could be tested, and a unique statistical test would need to be developed tuned to the specific metric specifications. 
Possible Metric Criteria

Data could be collected from the MechaCar model and against a specific model of the competition based on the below criteria.

1.	Acceleration Speed
2.	Cost (Selling Price)
3.	Fuel Efficiency
4.	Comfort (Space & User Functionality)

To allow for these metrics to be measured a large enough sample size would be required, and the samples must be randomly selected. 

**Possible Hypotheses**

Null Hypothesis (Ho): MechaCar has better fuel efficiency compared to other models of its type.

Alternate Hypothesis (Ha): MechaCar does not have better fuel efficiency compared to other models of its type.

**Statistical Test Selection**

I would recommend using the t-test to test the hypothesis. I suggest using this as the is only 1 independent variable that is dichotomous and there is also only 1 dependent variable that is continuous. Furthermore, the analytical question that we are asking, is if there is a statistical difference between the mean of the two samples. 
Statistical Test Outline

**Statistical Test Outline**

The standard p-value of 0.05 would be used to determine the strength of the correlation, with number larger than is signifying a weaker significance and larger values indicating a higher level of significance. Fuel efficiency would be based on kilometres per litre (kpl) and would tested for a 60L engine for both the MechaCar model and the competition models. 


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## **Summary**

1. A linear regression analysis identified ground clearance and vehicle length and to a lesser extent vehicle weight as the variables that are statistically unlikely to provide random amounts of variance to the linear model, meaning that all three coefficients have a significant impact on miles per gallon (mpg) for the MechaCar protypes.

2. Summary statistics of the PSI of the suspension coils from the manufacturing lots stated Lot 1 to have  a variance of 0.9795918 and Lot 2 to have  a variance of 7.4693878 respectively, which both fall within the variance tolerance of 100-psi. Lot 3 however, had a variance of 170.2861224, which exceeds the variance toleration dictated in the design specifications

3. The t-tests determined that there is no statistical difference between the sample of Lot 1 and the population mean, there was a strong correlation between the sample of Lot 2 and the population mean, and that there is a very weak correlation between the sample PSI of Lot 3 and the population mean.

4. A number of variables were identified as possible indicators of vehicle performance of the MechaCar against vehicles from other manufacturers such as acceleration speed, cost, and fuel efficiency. In designing our own statistical test, it was decided that t-test would be used to test the hypothesis and would be measured against the normal correlation with a p-value of 0.05.













