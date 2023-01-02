# MechaCar_Statistical_Analysis
Module 16 R challenge


In this challenge, we’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

# Deliverables
This consists of three technical analysis parts and a proposal for further statistical study. We’ll submit the following:

Part 1: Linear Regression to Predict MPG
Part 2: Summary Statistics on Suspension Coils
Part 3: T-Test on Suspension Coils
Part 4: Design a Study Comparing the MechaCar to the Competition


## Linear Regression to Predict MPG
Interpretation of the multiple linear regression results.
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Using a multiple linear regression model, we could determine that vehicle length and ground clearance have a statistical significance on miles per gallon (mpg). Both vehicle length and ground clearance had p-values below the significance level of 0.05%. Vehicle length and ground clearance had p-values equal to 2.60e-12 and 5.21e-08, respectively.
 
2. Is the slope of the linear model considered to be zero? Why or why not?

Given that the multiple r-square value is 0.7149 and the p-value is below the significance level of 0.05%, there is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model is a good indicator of effectiveness because the multiple r-square value is 0.7149 and the p-value is 5.35e-11, which is below the significance level of 0.05%. The r-square value tells me that about 71% of predictions will be correct using this linear model.

<img width="721" alt="Screen Shot 2023-01-01 at 9 55 22 PM" src="https://user-images.githubusercontent.com/110873947/210195378-743c3eac-880a-4838-b7a0-5b2f9f06e113.png">

<img width="444" alt="Screen Shot 2023-01-01 at 9 56 36 PM" src="https://user-images.githubusercontent.com/110873947/210195380-8cdd6168-d079-42b8-a4fd-35223559a911.png">


![Screen Shot 2023-01-01 at 10 16 30 PM](https://user-images.githubusercontent.com/110873947/210195385-deb50294-c24f-4d4a-971b-c05b8f44a62c.png)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The manufacturing lots had a PSI variance of 62.3, which meets the design specification. 
When grouped by manufacturing lots we see, lots 1 and 2 met the design specification well below the PSI limit. 
Lot 1 had a PSI variance of 0.980 and lot 2 had a PSI variance of 7.47. L
Lot 3 did not meet the design specification; it exceeded the PSI limit. Summary statistics show that Lot 3 had a PSI variance of 170.

<img width="337" alt="Screen Shot 2023-01-01 at 10 03 37 PM" src="https://user-images.githubusercontent.com/110873947/210195761-5ffbf816-83bf-4a8d-8e9b-7f2e8e761513.png">

<img width="367" alt="Screen Shot 2023-01-01 at 10 04 41 PM" src="https://user-images.githubusercontent.com/110873947/210195762-c8574cb0-902e-4b35-a12b-3a761fe8d3e4.png">


## T-Tests on Suspension Coils

The p-value of the suspension coil’s PSI is 0.06028, which is above the significance level of 0.05% and therefore demonstrates that it is not statistically different from the mean population PSI results. 
When grouped by manufacturing lots, lot 1 had a p-value of 1 and lot 2 had a p-value of 0.6072, which are above the significance level as well, and thereby demonstrate that they are not statistically different from the mean population PSI results. 
Lot 3 had a p-value of 0.04168, which is below the significance level. Among the three manufacturing lots, the suspension coil's PSI of lot 3 is the only one that is statistically different from the mean population PSI results.

<img width="498" alt="Screen Shot 2023-01-01 at 10 10 53 PM" src="https://user-images.githubusercontent.com/110873947/210195887-b7aabc0d-49b1-4318-9582-7857ac7c0c71.png">

<img width="414" alt="Screen Shot 2023-01-01 at 10 11 34 PM" src="https://user-images.githubusercontent.com/110873947/210195888-01b7c479-a8e1-4670-8ac8-3f9ac4510b6d.png">

<img width="663" alt="Screen Shot 2023-01-01 at 10 12 27 PM" src="https://user-images.githubusercontent.com/110873947/210195889-c6e79995-891e-4878-b626-b9764915f2dc.png">

<img width="623" alt="Screen Shot 2023-01-01 at 10 13 27 PM" src="https://user-images.githubusercontent.com/110873947/210195890-7a0d4717-9f32-4942-9ea7-6e4a776139d3.png">

<img width="567" alt="Screen Shot 2023-01-01 at 10 13 34 PM" src="https://user-images.githubusercontent.com/110873947/210195891-b76e827c-7334-42e3-b29a-28fa28b067ba.png">


## Study Design: MechaCar vs Competition

Horsepower is a metric that can be used to compare the MechaCar prototype vehicle to other comparable vehicles on the market.
I used a single linear regression model to determine whether there is a correlation between horsepower (hp) and miles per gallon (mpg). This tested the following hypotheses:
  * H0: There is a correlation between hp and mpg.
  * Ha: There is no collreation between hp and mpg.
The model resulted in a multiple r-square value of 0.6024. This proves that there is a moderate/strong correlation between hp and mpg.

For my second statistical test I used a one-sample t-test. 
I tested on a random sample size of 30 to see if there is statistical similarities between the horsepower sample mean and horsepower population mean. 
The reason I did this was to see if hp would be worthy data collection point for further analysis. It tested the following hypotheses:
  * H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
  * Ha : There is a statistical difference between the observed sample mean and its presumed population mean.
The t-test resulted in a p-value of 0.8304, which is above the significance level of 0.05%. Therefore, I do not have sufficient evidence to reject the null hypothesis, and thereby state that the two means are statistically similar.

Based on my analysis using single linear regression model and one-sample t-test, there is evidence to suggest that horsepower would be a good data collection point to include in the MechaCar dataset for further studies in future.

<img width="381" alt="Screen Shot 2023-01-01 at 10 23 24 PM" src="https://user-images.githubusercontent.com/110873947/210196096-4336538f-f2bc-4465-9bb6-8cd1efe525a7.png">

<img width="423" alt="Screen Shot 2023-01-01 at 10 23 57 PM" src="https://user-images.githubusercontent.com/110873947/210196097-873c85a2-2706-4f33-93c9-c8f71ab41026.png">

<img width="610" alt="Screen Shot 2023-01-01 at 10 21 28 PM" src="https://user-images.githubusercontent.com/110873947/210196091-2b6741e2-307b-4dc8-b41d-d7100b0c8268.png">

<img width="342" alt="Screen Shot 2023-01-01 at 10 22 38 PM" src="https://user-images.githubusercontent.com/110873947/210196093-f190f8ef-c6c2-458f-9798-dbbeba392240.png">

<img width="508" alt="Screen Shot 2023-01-01 at 10 23 03 PM" src="https://user-images.githubusercontent.com/110873947/210196094-2d205ac7-a61b-4333-83cc-937fa2e70903.png">


