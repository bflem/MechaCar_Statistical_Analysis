# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The intercept, vehicle_length, and ground_clearance provided a non-random amount of variance to the mpg values in the dataset.
The slope of the linear model is not considered to be zero because we can reject the null hypothesis due to the small p-values.
This model does predict mgp effectively because it has a high R-squared value.

![Linear Regression Summary]("C:\Users\Brandon\Bootcamp\R_Analysis\Deliv1.PNG")

## Summary Statistics on Suspension Coils
Lot 3 exceeded the 100 pounds per square inch. The variance was under 100 pounds per square inch for all lots combined.

![Summary Statistics]("C:\Users\Brandon\Bootcamp\R_Analysis\Deliv2.PNG")
![Summary Statistics]("C:\Users\Brandon\Bootcamp\R_Analysis\Deliv2.2.PNG")

## T-Tests on Suspension Coils
Lots 1 and 2 had p-values of less than .05 so we can reject the null hypothesis, meaning we think the means are different from the population mean. Lot 3 had a p-value of greater than .05 so we fail to reject the null hypothesis, meaning we think the mean is similar to the population mean.

![Lot 1 T-test]("C:\Users\Brandon\Bootcamp\R_Analysis\Deliv3.PNG")
![Lot 3 T-test]("C:\Users\Brandon\Bootcamp\R_Analysis\Deliv3.2.PNG")

## Study Design: MechaCar vs Competition
I would want to conduct a study that compared the time it takes the MechaCar to go from 0 to 60 mph in seconds and the noise levels compared to the competition. All participating cars would go through the same tests for the data to be collected. The alternative hypothesis would be that the MechaCar beats every other car in both categories. I believe we would be fine doing two separate one-sample t-tests for each metric. We would the MechaCar mean to be higher for the 0 to 60 metric and lower for the noise level.
