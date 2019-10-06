#intro - why learn R
#dataframes and data anaylsis

#explain console vs. the script
#can use R as a calculator, good example for using the console
3+2
4/3
3*3
'hello world'
#R follows math rules and will do the work in the parenthesis
(4+2)*4
(4+
# If there is an error, such as not having a closed parethesis, 
# the R console with let you know with a '+' in place of the '>'
2)*4


#data types
#Number types: numerics, integers, complex, 
3
9
5
2.356

#integers are specificed with an L, ex. 2L -> look up why integers are different from numerics
#interger are the numers without decimal. In R, you can define the interger by adding L suffix, or 
#you can use function as.interger() to define a integer

3L
as.integer(3.14)

#complex we studied in math class
3+1i

#word type: character, logical
'dog'
'plant'
TRUE
FALSE
class(3) == class(3L)
3 == 3L
300 > 200
0 > 999
'abc' != 'ABC'

#Exercise:
#Which of the following will NOT return TRUE?    
#A. FALSE == FALSE  
#B. 10-5 == sqrt(25)  
#C. TRUE > FALSE  
#D. 'a' > 'b'


#why here are serveral datatypes? because sometime the data input some R package required  need to be specific datatypes

#varibles
#motivation: a way to store information
#A variable is a keyword that you define the meaning of in R
dog
#we get an error, because R doesn't know what dog is
dog <- 3
dog
#now R has a definition for dog and it no longer causes an error.
#R doesn't need varible to make sense
#But it is a good idea to have the varible make sense, so you and others can follow what your code does
typeof(dog)
class(dog)

l <- 1:10
class(l)
typeof(l)
length(l)

l <- list(1,2,3,'cat', 'dog')

# 4 Data Structures
#motivation go through the data structure in R, give you guys some examples
# 1. Atomic Vector
# 2. List
# 3. Matrix
# 4. Data Frame

# Atomic Vectors
#A object that hold that holds multiple pieces of information
logic_vector <- c(TRUE, TRUE, FALSE, TRUE)
char_vector <- c("Asher", "Matt", "Sean")
#you can expand a vector, using itself as a varible
#here we redfine char_vector while using char_vector as a variable
char_vector <- c(char_vector, "Heather", "Andreina")
char_vector
length(char_vector)
class(char_vector)

# you can combine different types of data into a vector
mixed <- c(TRUE, "A")
mixed
as.logical(mixed)

# Lists
# you use list() to make a list
my_list <- list(1, "A", TRUE)
my_list
my_list[1]
my_list[2]
my_list[3]

# you can give each element of the list a name
phonebook <- list(name="Asher", phone="111-1111", age=27)
phonebook["name"]

# Matricies
# a mtrix is multipe of rows and columns of data
m <- matrix(nrow=2, ncol=3)
m
# give the matrix some data 1 to 6 formated as 2 rows and 3 columns 
m <- matrix(1:6, nrow=2, ncol=3)
m
m <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
m

# Data Frames
# As we go through the data structure, it get more complex, vector, list, matrix, 
# dataframe is the most complex one, and the most common data structure we use in real life
df <- data.frame(id=letters[1:10], x=1:10, y=11:20)
df
class(df)
typeof(df)
#if you have a very large dataframe, here are a few commandlines showing what the pieces of data look like
head(df)
tail(df)
#learn the size of the dataframe, know how much data you should have, making sure you are woking on the right data,
#like, incomplete downloading
nrow(df)
ncol(df)
dim(df)
str(df)
names(df)

# summary can help do some basic calculations, like the mean, max, min, median and so on.
summary(df)


