#How to load the data
# read.csv() read.delim()
gapminder2 <- read.table(file = "data/gapminder.txt", header=TRUE, sep = "\t", stringsAsFactors = FALSE)
gapminder <- read.table(file = "data/gapminder.txt", header=TRUE, sep = "\t")
#file is the name of the file
#header indicates whether there is a header in the file. if you don't tell, the header would 123
# sep is to define the field seperator character. tells what colomns are seperated by.

head(gapminder)
tail(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)

#How to extract specific data from a dataframe
gapminder
str()
summary(gapminder)
min
max
median

#Exercise:
#Import the gapminder data frame again.

#Use `str()` to look at the structure of the dataframe and `summary()` to get information about the variables.

#What are its columns?
#How many rows and columns are there?
#What is the earliest year in the `year` column?
#What is the average life expectancy?
#What is the largest population?



#Suppose we were interested in the life expectancy (i.e. 4th column) for 1957 for Afganistan in the years 1952, 1962, and 1977
#(i.e. rows 1, 3, and 5). How to select these multiple elements?
gapminder[c(1, 3, 5), 4]

#We can select these rows and all the columns;
gapminder[c(1, 3, 5),]

#For a ‘rectangular’ selection of rows and columns;
gapminder[20:22, 3:4]

#Negative values correspond to dropping those rows/columns;
gapminder[-3:-1704,] 

#As well as storing numbers and character strings (like "United States", "Canada") R can also store logicals – `TRUE` and `FALSE`.
#To make a new vector, with elements that are `TRUE` if life expectancy is above 71.5 and FALSE otherwise;
is.above.avg <- gapminder$lifeExp > 71.5

#Let's see how many of the total were TRUE and how many were FALSE using the table() function.
#The table() function will create a count table from a vector of categorical data.
table(is.above.avg)

#Which countries and during what years were these? (And what was the avg. life expectancy?)
gapminder[is.above.avg,] # just the rows for which is.above.avg is TRUE
gapminder[is.above.avg,4] # combining TRUE/FALSE (rows) and numbers (columns)
length(gapminder[is.above.avg,4])

#One final method... for now!
#Instead of specifying rows/columns of interest by number, or through vectors of `TRUE`s/`FALSE`s, 
#we can also just give the names – as character strings, or vectors of character strings.
gapminder[,'lifeExp']
gapminder[,c('lifeExp','pop')]
head(gapminder[,c('lifeExp','pop')])

#We look for a specific contry and specify the columns
gapminder[gapminder$country == 'Gabon',c("lifeExp","gdpPercap")]
gapminder[gapminder$country == 'Gabon',4] # okay to mix & match












