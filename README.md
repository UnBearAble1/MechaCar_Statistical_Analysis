# MechaCar Statistical Analysis

This analysis reviews AutosRU's newest prototype, the Mechacar, which is suffering from production troubles. The analysis reviews our current data to try and determine what insight can be gained to address the current issues

## Linear Regression to predict MPG

Our first analysis reviews variables including vehicle length, weight, spoiler angel, ground clearance and if the car is all wheel drive to determine the impact of each on MPG. Running a linear regression on the dta [provides the following results:

### Multiple Linear Regression
![Multiple Linear Regression](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/Multiple_Regression%20Summary.png)

The data shows that the length of the vehicle and the ground clearance of the vehicle have the highest impact on the MPG. Vehicle weight may have some correlation to MPG but the relationship is very weak, and spoiler angle and whether the vehicle is AWD or not have no demonstrated impact.

We can also see that the slope of the model is not zero, due to the p value of the intercept being near to zero, meaning that it has a very close relationship

While this data shows some correlations, it may not be the best model to predict MPG of the vehicle. If these prototypes have different engine types or other differences in mechanical cmponetens, those may have a greater correlation to MPG and should also be included in an analysis

## Summary Statistics on Suspension Coils

The next analysis looked at suspension coil sot ensure that each lot where the MechCar is being produced meets design specifications. The Suspension coil data was was used and sample data was taken grouped by each lot to review the mean median variance and standard deviation of the PSI for each of the lots.

### Total Summary
![Total Summary](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/PSI%20Summary.png)

### Lot Summary
![Lot Summary](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/Lot%20Summary.png)

The analysis shows that while the total population meets the guidelines for a variance of PSI of under 100, lot 3 had a variance of over 100, showing that it does not meet the design specifications. In fact the variance of lot 3 is substantially more than both Lots 1 and 2

## T-Tests on Suspension Coils

With the insight from the previous analysis, a t-test was run on a sample of the entire population of vehicles and then on a sample from each lot compared to the mean of the population as a whole. Since the data set has 150 total entries, a random sample of 50 was selected for the entire population.

### T-Test for all car lots

![Population T-Test](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/single%20ttest.png)

The above results show that a random sample from all of the lots are slightly below the population average of 1500


The data was then grouped into subsets by each lot to run a random sample against the population mean. Since each lot had 50 entries, samples of 25 were used for the T-Test

### T-Test 

### T-Test for lot 1

![T-Test for lot 1](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/Lot%201%20ttest.png)

The p-value for this sample is very small, meaning that we have sufficient evidence to reject the null hypothesis and the two means are not statistically similar.

### T-Test for lot 2

![T-Test for lot 2](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/Lot%202%20ttest.png)

The p-value for this t-test is also very small, once again meaning that we have sufficient evidence to reject the null hypothesis and the mean of the sample and the mean of the sample and the mean of the whole population are not statistically similar

### T-Test for lot 3

![T-Test for lot 3](https://github.com/UnBearAble1/MechaCar_Statistical_Analysis/blob/main/Lot%203%20ttest.png)

The p-value for this test is quite large, meaning that we do not have sufficient evidence to reject the null hypothesis and the mean of lot 3 and the mean of the population are similar. since we know that lot 3 has issues with the variance of its PSI due to previous tests, we know that this production facility is strongly influencing the mean of the population and lot 3 needs to be focused on to resolve the issues being faced in the production of the MechaCar

## Study Design: MechaCar vs Competition

while the above tests have helped to identify areas that need to be addressed to help resolve MechaCar's production issues, it will also be useful to perform tests to see how MechaCar compares to the competition. Since MechaCar aims to be the vehicle of the future, we recommend touting its fuel efficiency as car buyers in our markets are more concerned with this metric.

For this study, we recommend a null hypothesis that MechaCar's new technology has the same highway fuel efficiency of other cars in its class. The alternative hypothesis is that MechaCar's new technology has better fuel efficiency compared to other cars in its class.

To run this test, we recommend using a multiple linear regression test as there will be multiple independent variables that impact fuel efficiency and we want to isolate MechaCar's use of new technology for its impact on fuel efficiency.

The data set that we would need for the data includes the type of technology used in the MechCar in addition to items that we know impact fuel efficiency so they can be accounted for including engine type, tires, MPG, vehicle length, ground clearance.

