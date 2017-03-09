##Panel Analysis of Paying More to Protect the Environment

This analysis explored the association between how willing respondents would pay higher prices to protect the environment and income. It is hypothesized that as income increases, the willingness to pay higher prices to protect the environment will also increase. Conversely, as political views become more conservative and if one is pressured to pay bills, the willingness to pay higher prices for the environment should decrease. 

The panel is from the General Social Survey and was taken at three intervals, 2006, 2008 and 2010. The dependent variable (willing to pay more for the environment) is only available for panels 2 and 3, and therefore the analysis will be restricted to years 2008 and 2010.  Due to the lack of improvement from the great recession between 2008 and 2010, it is hypothesized that the willingness to pay higher prices for the environment between these two waves should decrease. 

Variables

payenvir: A measure based on the question: How willing are you to pay higher prices to protect the environment. Modeled as a continuous variable that ranged from 1 to 5, 1 not willing at all and 5 very willing. 

realinc: Family income in constant US dollars

polviews: Modeled as a continuous variable that ranged from 1 to 7, 1 is extremely liberal and 7 is extremely conservative. 

finan4: Measures financial stress, based on the question: Did any of the following financial matters happen to you - during the last year were you pressured to pay bills by stores, creditors, or bill collectors? Variable is binary, 1 “yes” and 2 is “no”.

###OLS Regression

The output of the OLS regression, with clustered standard errors,  is given below:

![image](https://cloud.githubusercontent.com/assets/11237613/23759784/c460dde0-04bb-11e7-8f63-940957b460db.png)

Total Sum of Squares:    2963
Residual Sum of Squares: 2732.9
R-Squared      :  0.077626 
      Adj. R-Squared :  0.077501 
F-statistic: 69.571 on 3 and 2480 DF, p-value: < 2.22e-16


The results show a highly statistically significant association between the willingness to pay higher prices to protect the environment and real income, political views and the 2010 panel. However, for income the effect size is small: for every $10,000 increase in income, the willingness to pay more increases by only 0.0183 points.  In addition, for every one unit increase in becoming conservative, the willingness to pay higher prices for the environment decreases by -0.2 points. Panel wave 3 shows that overall, controlling for income and political views, the willingness to pay more to protect the environment in 2010 decreases by 0.181 compared to 2008. 

These results are what I expected – as income increases, the willingness to pay more should go up due to a higher income and the capacity to pay more for the environment. I however expected a larger effect size. The negative association and effect size for political views and panel wave 2010 are what I expected.  Respondents who are more conservative are generally less empathetic to environmental concerns and less willing to pay for it.  In addition, the financial strain due to the great recession that remained unresolved in 2010 meant that respondents were likely less willing to pay higher prices for the environment.

###Panel Analysis using Fixed Effects

The model was run with fixed effects, here are the results:

![image](https://cloud.githubusercontent.com/assets/11237613/23760006/554c1e5a-04bc-11e7-9320-6c534572fc11.png)

Total Sum of Squares:   663
Residual Sum of Squares: 642.17
R-Squared      :  0.031421 
      Adj. R-Squared :  0.013383 
F-statistic: 11.4407 on 3 and 1058 DF, p-value: 2.1907e-07


The results show that the willingness to pay more for the environment is not statistically significant with income or political views (p>>0.05). These results reveal that people between the two waves probably did not change their political views and perhaps income did not change as well. On the other hand, the results for panel wave 3 show that people in 2010, relative to those in 2006, decreased their willingness to pay higher prices for the environment by 0.2 points, controlling for income and political views. 

###Adding Financial Stress (finan4)

![image](https://cloud.githubusercontent.com/assets/11237613/23762979/e675799a-04c5-11e7-8f90-994cd397e770.png)

Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Total Sum of Squares:    663
Residual Sum of Squares: 640.09
R-Squared      :  0.034553 
      Adj. R-Squared :  0.014703 
F-statistic: 9.4575 on 4 and 1057 DF, p-value: 1.6353e-07

Adding finan4 (paying bills) does not change the statistical significance of income or political views. Panel wave 3 is still highly statistically significant but there is a slight change in the coefficient (changes from -0.195 to -0.208). Paying bills is slightly statistically significant (p = 0.064). It shows that those who did not have to pay bills are less willing to (-0.163) to pay for the environment compared those who had to pay bills.




