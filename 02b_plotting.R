# Scatterplot
#The basic plot function is plot(x, y, ….) which x corresponding to your x-variable and y to the y-variable.
#Let’s plot sepal length as a function of petal length.


plot(gapminder$gdpPercap, gapminder$lifeExp)
#How useful is looking at all the data?

#How can we look at a subset of the data?
cont <- 'Europe'
euro_lifeExp <- gapminder[gapminder$continent == cont, 'lifeExp']
euro_gdpPercap <- gapminder[gapminder$continent == cont, 'gdpPercap']
plot(euro_gdpPercap, euro_lifeExp)

#How can we look at a subset of the data?
contry <- 'Australia'
aus_lifeExp <- gapminder[gapminder$country == contry, 'lifeExp']
aus_gdpPercap <- gapminder[gapminder$country == contry, 'gdpPercap']
plot(aus_gdpPercap, aus_lifeExp)

#We see a scatterplot that shows there is a positive association between sepal and petal length. 
#To add a linear regression line, you would need to use two commands abline() and lm(). lm() is used to fit linear models and 
#uses the arguments lm(y ~ x), while abline will actually fit a line to the most recent plot. Let’s try it out.

#check with group
#abline(lm(euro_gdpPercap ~ euro_lifeExp))

# Histogram
#Plot will default to a scatterplot, but if you want a histogram then you need to use the type argument.
plot(aus_lifeExp, type = 'h')
#plot(aus_lifeExp[aus_lifeExp>mean(aus_lifeExp)], type = 'h')


#Boxplot
#To make a boxplot, you can use the function boxplot(x ~ y, data = dataframe). 
#Let’s plot life expectancy as a function of continent
boxplot(lifeExp ~ continent, data = gapminder)

#Factors are basically character data that is assigned interger values
#This helps save on memory
gapminder$country[10:15]
str(gapminder$country[10:15])

#If you ever want to change what order the categories on the x-axis are displayed in 
#you would need to order the factor levels of that column.

#Plotting in base R can be flexible and you can actually do a lot with it, 
#but many people find ggplot more user friendly and easier to learn. 
#Let’s move on and learn how to do these plots using the ggplot package. 
#Whichever you decide to use, there is a lot of help online if you need it.

#EXERCISE
#Pull up the plot help page. What arguments would you use to change the x and y axis label?

#Change the axes labels for the first graph we did.




