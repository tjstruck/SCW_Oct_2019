library(tidyverse)
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", stringsAsFactors = FALSE)

#How to install a new package
install.packages("dplyr")

#Don't forget to load the package so we can use its functionality
library(dplyr)


# The five main Dplyr commands

# select() chooses columns/variables. This will keep only the variables you select.
# select()
select(gapminder, lifeExp)
select(gapminder, lifeExp, year, country, continent)

# filter()  chooses rows/observations based on conditions
# filter()

filter(gapminder, continent == "Asia")
filter(gapminder, year > 2000)

#We can also use outside information to help subset data.
two.countries <- c('Kenya', 'Gibon')
filter(gapminder, country %in% two.countries)



#%in% will enable you to search all lines in the column country for all character strings in the two.countries file 
#and will return a TRUE if it finds an one of them.

# dplyr works by piping commands, like you learned to do in the command line.  
# Instead of the pipe `|`, we use `%>%`.
gapminder %>% select(lifeExp) %>% min()

#How we would do it without dplyr
min(gapminder[,'lifeExp'])
#An important difference between `dplyr` and base R is when use character strings 
#we don't need to enclose them in quotation marks as we did above (i.e. gapminder[,'lifeExp'])

#But we can do more complex things with dplyr
gapminder %>% select(-pop, -gdpPercap) %>% filter(continent == "Asia",year == 2007) 


# 
mutate()

#If we want to make a new column, use `mutate`.  Don't forget we have to assign it if we want to keep the changes
gapminder <- gapminder %>% mutate(NewColumn = lifeExp * 12)
gapminder


# Group_by() divides the dataframe into multiple data frames for each group value.
group_by()

# summarize. Group_by() is much more exciting in conjunction with summarize(). This will allow 
# us to create new variable(s) by using functions that repeat for each of the continent-specific 
# data frames. That is to say, using the group_by() function, we split our original dataframe into 
# multiple pieces, then we can run functions (e.g. mean() or sd()) within summarize().


summarize()

count()
n()


gapminder %>%
  group_by(continent) %>%
  summarize(
    mean_le = mean(lifeExp),
    min_le = min(lifeExp),
    max_le = max(lifeExp),
    se_le = sd(lifeExp)/sqrt(n()))










#Now what about subsetting rows?  For this we use te `filter` command:
gapminder %>% filter(lifeExp > 71.5)



#EXERCISE
#Reimport the `gapminder` dataframe:
#Create a new dataframe that contains only country names, years, and life expectancies of the `gapminder` dataset. 
#Use this new dataframe to calculate minimum & maximum expectancies.

# dplyr
gapminder %>% select(continent) %>% distinct()
