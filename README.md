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

The results show a highly statistically significant association between the willingness to pay higher prices to protect the environment and real income, political views and the 2010 panel. However, for income the effect size is small: for every $10,000 increase in income, the willingness to pay more increases by only 0.0183 points.  In addition, for every one unit increase in becoming conservative, the willingness to pay higher prices for the environment decreases by -0.2 points. Panel wave 3 shows that overall, controlling for income and political views, the willingness to pay more to protect the environment in 2010 decreases by 0.181 compared to 2008. 

These results are what I expected – as income increases, the willingness to pay more should go up due to a higher income and the capacity to pay more for the environment. I however expected a larger effect size. The negative association and effect size for political views and panel wave 2010 are what I expected.  Respondents who are more conservative are generally less empathetic to environmental concerns and less willing to pay for it.  In addition, the financial strain due to the great recession that remained unresolved in 2010 meant that respondents were likely less willing to pay higher prices for the environment.

###Panel Analysis using Fixed Effects


