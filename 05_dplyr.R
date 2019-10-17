#How to install a new package
install.packages("dplyr")

#Don't forget to load the package so we can use its functionality
library(dplyr)

#dplyr works by piping commands, like you learned to do in the command line.  Instead of the pipe `|`, we use `%>%`.
gapminder %>% select(lifeExp) %>% min()
#How we would do it without dplyr
min(gapminder$lifeExp)
min(gapminder[,'lifeExp'])
min(gapminder[,lifeExp])
#An important difference between `dplyr` and base R is when use character strings 
#we don't need to enclose them in quotation marks as we did above (i.e. gapminder[,'lifeExp'])


#But we can do more complex things with dplyr
#dplyr also comes with ways to subset our data.
#If we only want to choose one column, we use `select`:
select(gapminder, lifeExp)
gapminder %>% select(lifeExp)

#If we want to make a new column, use `mutate`.  Don't forget we have to assign it if we want to keep the changes
gapminder <- gapminder %>% mutate(NewColumn = lifeExp * 12)
gapminder

#If we want to select all columns except 1, we can do that with the `-` operator.  
#Remember that if we want to save anything we are doing, we must store it in a variable.
gapminder <- gapminder %>% select(-NewColumn)
gapminder

#Now what about subsetting rows?  For this we use te `filter` command:
gapminder %>% filter(lifeExp > 71.5)

#We can pipe several commands, just like with the command line:
gapminder %>% select(lifeExp, country) %>% filter(lifeExp > 71.5) %>% mutate(lifeExpdays = lifeExp * 365)

#We can also use outside information to help subset data.
two.countries <- c('Kenya', 'Gibon')
gapminder %>% filter(country %in% two.countries)

#%in% will enable you to search all lines in the column country for all character strings in the two.countries file 
#and will return a TRUE if it finds an one of them.

#EXERCISE
#Reimport the `gapminder` dataframe:
#Create a new dataframe that contains only country names, years, and life expectancies of the `gapminder` dataset. 
#Use this new dataframe to calculate minimum & maximum expectancies.


# Base R
unique(gapminder$continent)
# dplyr
gapminder %>% select(continent) %>% distinct()




# Quitting R

# When you’re finished with RStudio;
#
# * Ctrl-Q, or the drop-down menus, or entering q() at the command line all start the exit process
# * You will be asked “Save workspace image to ∼/.RData?”
# + No/Don’t Save: nothing is saved, and is not available when you re-start. 
#   This is recommended, because you will do different things in each session

# + Yes: Everything in memory is stored in R’s internal format (.Rdata) and will be available when you re-start RStudio

# + Cancel: don’t quit, go back
# Writing about what you did (output from a script) often takes much longer than re-running that script’s analyses – 
# so often, a ‘commented’ script is all the R you need to store
# 
# **Note:** To get rid of objects in your current session, use `rm()`, e.g. `rm(is.above.avg, new_gapminder, x, y)` ... 
# or RStudio’s ‘broom’ button on the Environment tab.
# 
# 
# Summary
# 
# In RStudio, read in data from the pop-up menu in the Environment window (or Tools menu)
# Data frames store data; can have many of these objects – and multiple other objects, too
# Identify vectors with $, subsets with square brackets
# Many useful summary functions are available, with sensible names
# Scripts are an important drudgery-avoidance tool!




