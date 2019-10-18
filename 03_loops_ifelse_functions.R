# Explain the basics components of a loop and what it's doing
for(i in 1:10){
  print(i)
}


#Quick for loop example

#Loops take an empty variable, define it as en element from a list/vector
for(cont in unique(gapminder$continent)){
  life.min <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  life.max <- max(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste0('The life expectancy in ',cont,' is ',life.min,' to ',life.max))
}
#Here we are taking each element in unique(gapminder$continent) and 
#sequentially assigning it to the variable cont (which is completely arbitrary; it could easibly be continent, cont, x, y, z). 
#The variable cont is then used in the code to perform a function.

#Let's use a different variable and see if we get the same results.
for(blah in unique(gapminder$continent)){
  life.min <- min(gapminder[gapminder$continent == blah, 'lifeExp'])
  life.max <- max(gapminder[gapminder$continent == blah, 'lifeExp'])
  print(paste0('The life expectancy in ',blah,' is ',life.min,' to ',life.max))
}

# Exercise

#Let's try out a for loop 
#In this exercise, we want to make a vector that contains the square roots of the integers from the vector below. 
loop.vector <- c(1,4,9,16,25,36,49,64,81,100)

m <- c()
m
for (i in loop.vector){
  m = c(m,sqrt(i))
  # print(m)
}
print(m)


#When coding sometimes you want a particular function to be applied if a condition is true and 
#sometimes a different function if it is not. To do this you need to use an if or if...else statement

#Basic structor of "if ... else" is
# if (test_expression) {
#   statement1
# } else {
#   statement2
# }

#In a simple if statement, a function is executed if the test expression is true while it is ignored entirely if it is false.
x <- 5
if (x > 0) {
  print('Positive number')
}
#Here, `x > 0` is `TRUE`, so the if statement is executed, and the statement is printed.
#Let's try this with the gapminder dataset. The world mean life expectancy is 71.5 years. 


#Combining loops with if ... else
gapminder %>% select(lifeExp) %>% summarize(mean = mean(lifeExp))
meanLifeExp <- mean(gapminder$lifeExp)
#Let's have a `'Greater than avg.'` statement returned if the value within the 'lifeExp' col exceeds that.
for(x in gapminder$lifeExp){
  if(x > meanLifeExp){
    print(paste0(x, ' is greater than avg.'))
  }
}


#Here the else statement is only used if the first test expression is false, 
#if the first test expression is true then statement1 will be run.

x <- -5
if(x > 0) {
  print('Positive number')
} else {
  print('Negative number')
}
#Here, `x > 0` is `FALSE`, so the if statement is not executed and instead the else statement is executed.


#You can nest as many if...else statements as you want.
x <- 0
if(x > 0) {
  print('Positive number')
} else if (x < 0) {
  print('Negative number')
} else {
  print('Zero')
}


# Multiple choice and an exercise

# What would be the output of the following code:
# x <- -6
# if(x > 0){
#   print('x is greater than zero')
# }

# A. x is greater than zero
# B. x is less than zero
# C. nothing
# D. an error message

# How could you change the code so that if x is less than 0 you get a message saying 'x is
# less than zero'? 
