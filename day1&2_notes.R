#getting help 

help(read.table)


# Basic math functions 

a <- 11
b <- 15

c <- sqrt(a^2 + b^2) 

print(c)

# naming conventions 

TRUE 
FALSE
NA  # it represents missing values

class(TRUE)
class(NA)

# Logical expression 

# equality ( == )

5 == 5

5 == 6

# not euqal to ( !=)

5 != 6

my_blood_pressure_today <- 120

print(my_blood_pressure_today)

# AND "&"

my_blood_pressure_today > 100 & my_blood_pressure_today < 110

# OR  "|"

my_blood_pressure_today > 100 | my_blood_pressure_today < 110

# IF STATEMENT 

if(my_ blood_pressure<150) {
  print("I am fine")
}

if(TRUE) {
  print("I am great")
}

# Never use T and F to assign values ---- good pratice 
1 == TRUE

100 == TRUE

# True == 1
# False == 0

# else statement 

if(my_blood_pressure_today > 200) {
  print ("Nooo")
} else {
  print("Hurahhhh")
}

# Elseif statement 

my_blood_pressure <- 120

if(my_blood_pressure > 201) {
  print("lode lag gye")
} else if(my_blood_pressure < 121) {
  print("okay dokii")
} else {
  print (yeah)
}

# Problem - 

oct <- 10
nov <- 16 
dec <- 70 

if(oct^2 > 100 & sin(oct) > 0) {
  print ("BOTH TRUE")
} else if (oct^2 > 100 | sin(oct) > 0 ) {
  print ("at lwast one of them is true")
} else {
  print ("non true")
}

# Vectors 

my_vector <- c(1, 2, 3, 4, 5, 6, 7, 8)

breakfast <- c("yoghurt", "granola", "blueberries")

breakfast

c(breakfast, "eggs")

mixed_vecore <- c (1, 10, 40, "gronlla", "eggs")

class("mixed_vector")                   

scores <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120)
length(scores)

scores[5]

scores[10]

scores[1] #the first thing that you indent is the first letter. 

scores[9:length(scores)]

scores > 15

# Logical Indexing 

scores[scores>15]

months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

months

scores2 <- c(1,2,3,4,5,6,7,8,9,10,11,12)

scores2

high_scores <- scores2 > 4

high_scores

months[high_scores]

# FOR loops 

1:10

for (m in months) {
  print (months)
}

for (i in 1:10) {
  print(months[i])
  print(scores2[i])
}



for (i in 1:12) {
  if(scores[i]^2 > 100 & sin(scores[i]) > 0) {
    print ("BOTH TRUE")
  } else if (scores[i]^2 > 100 | sin(scores[i]) > 0 ) {
    print ("at lwast one of them is true")
  } else {
    print ("non true")
  }
}
  

# TASK: 
#find the squares of all numbers from 1 to 20 and print, 

num <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)


for (i in 1:20) {
  print(num^2)
}

print(num)


# While loop 

x = 5

while (x<5) {
  print(x)
  x <- x-1
}

x = 40 

while(x > 0) {
  print (x)
  x <- x-1
}

# square-brackets [] - indexing
items <- c("yes", "no", "huraahh")

items [1]
items [1:2]


# parentheses () - if, for, while functions 
# order of operations 

1 + 2 * 8 
(1 +2) * 8

if (TRUE) {
  print ("NONO")
}

# Curly braces {} - blocks of code after if, for and while commands. and it tells the if code that everything that is inside {} is a part of the loop. 

if (TRUE) {
  print ("NONO")
}

# break inside the while loop

z <- 0
while (TRUE) {
  print (z)
  print("first line")
  z ,- z + 1
  if (z ==3) {
    break
  }
  print ("third line")
}

# repeat statement  


# 2025.11.25

# ifelse

has_high_blood_pressure <- TRUE

ifelse(has_high_blood_pressure, print("watch out!"), print("all good!"))

# Lists - These are objects that are higher level things that helps with combining things 

x <- c("Banana", 3, NA)

class(x) # check the type of class the variable is. 

y <- list("Banana", 3, NA) # they can contain multiple classes and it is just a way to store data. 

z <- list(x, c("Rohit", "COrner", "Alejandra"), 914)

class(z)


# R use [[]] for indexing in the list


# single [] gives you the entire list whereas [[]] gives you the value of the specific place within the list. 

#str command
str(z)

## this is how we will work will unnamed list

# now we will work with named list. First install the tidy

installed.packages("dplyr")
library(dplyr)

# named list:
my_pet <- list(
  name = "coco", 
  age = 12,
  likes = c("humping", "barks", "cuddles")
)

str(my_pet)


my_pet[[3]]

my_pet$likes

# how would I oull FIRST element of the likes entry 

my_pet$likes[[1]]

# [] gives back the results in the same format
# [[]] gives back the results in the specific format


# another example -- one can also have lists inside lists as well 

pets <- list(
  name = c("coco", "thor", "cosmos", "louie")
  type = c("Dog", "Dog", "Cat", "Dog"),
  notes = "pets collected from day 2 of sec 2025",
  num_pets = 4
)


# data-frame:  

# non-functional dataframe
pets_df <- data.frame(
  name = c("coco", "thor", "cosmos", "louie"),
  type = c("Dog", "Dog", "Cat", "Dog"),
  notes = "pets collected from day 2 of sec 2025",
  num_pets = 4
)

# data-frames are special types of list )IMPORTANT MESSAGE)

pets_df <- data.frame(
  name = c("coco", "thor", "cosmos", "louie"),
  type = c("Dog", "Dog", "Cat")
)

## if you are using a function from a library than you :: between the name of the library and the command. 


# working with data-frames

pets_df[1,]  # gives me all info on first element

class(pets_df[1,])

pets_df[1:2,]  # gives me all info on 1st two element

new_pet <- data.frame(
  name = "George",
  type = "Fish"
)

dim(pets_df)
dim(new_pet)

# to add new enteries: rbind and dplyr::bind_rows

rbind(pets_df, new_pet) # I'm saying, hey R take the pets_df abd add the new_pet to it

dplyr::bind_rows(pets_df, new_pet) # another way. You wanna use this version because it is useful in case when data is missing

# for dplyr can look for missing values and then write "NA" for missing data and still give you an output 
# Example

new_pet <- data.frame(
  name = "George",
  type = "Fish",
  likes = "Escape"
)

# merging in lots of new data

pets_df <- bind_rows(pets_df, new_pet)

#cheatsheet for dplyr

nrow(pets_df) # 5 elements / pets

ncol(pets_df)
length(pets_df)



# working with gapminder .csv

#getwd() it asks R where are you right now, you can check it under the files on the lower right. 

setwd("C:/Users/rohit_negi/Desktop/Max Planck PhD_RN/Reprodictive Workflows for Scientific Computing")

gapminder <- read.csv("gapminder_data.csv")

str(gapminder)

as.factor(gapminder$country) # making it as a factor. useful to then count the unique values in country. 


# pipes versus nested functions

levels(as.factor(gapminder$country)) #nested

gapminder$country %>% as.factor() %>% levels() #pipes. it is useful when you have a lot of functions that you want to do at the sane time


# example of factors 

choices <- factor(c("left", "right", "left", "middle"),
                  levels= c("left", "right", "middle")
)

# 142 countries!
# 12 appearnces for each country
# 12*142 = 1704 rows

table(gapminder$country)


#figuring out what are the years 

levels(as.factor(gapminder$year))

gapminder$year %>% as.factor() %>% levels()

class(gapminder$year)

# a quick way to pull out unique values is to use 

unique(gapminder$year) # it also doesnot change the class of the integer classtype

# How mnay countries are there in each continent 

# using dplyr for exploratory analysis
# ctrl + shift + m - this shotcut makes the pipe

gapminder %>% 
  filter(continent == "Asia") %>% 
  summarize(             #summarize will create a table based on the table i pass through it, as many varibale as i want
    n_countries = length (unique(country)),
    n_continents = length((unique(continent)),
    first_year = min(year),
    last_year = max(year)
    )

# 

df <- data.frame(
  name = c("Jose", "Jse", "jose", "Alex", "Alexa"),
  weight=c(12, 14, 12, 15,15)
)

# how to clean and standandrize names
df$clean_name <- NA
df$clean_name[df$name %in% c("Jose", "Jse", "jose")] <- "Jose"   # rename typos 

# hits

df$name == "Jose" | df$name == "Jse" | df$name == "jose"  # this will go through the list and tell when it hits any of this and where it doesnot



##

gapminder %>% 
  group_by(continent) %>% 
  filter(continent == "Asia") %>% 
  summarize(             
    n_countries = length(unique(country)),
    n_continents = length(unique(continent)),
                          first_year = min(year),
                          last_year = max(year)
    ) %>% 
  as.data.frame()
  

  
gapminder %>%
  filter(continent != "Oceania") %>% 
  group_by(continent) %>% 
  summarize(             
    n_countries = length(unique(country)),
    n_continents = length(unique(continent)),
    first_year = min(year),
    last_year = max(year),
    lifeExp_avg = mean(lifeExp),
    lifeExp_min = min(lifeExp)
  ) %>% 
  as.data.frame() -> continent_stats

write.csv(continent_stats, "continents_stats.csv", row.names = FALSE)


#filter to the countries of the Americas 
# and cal avg GDP per capita, PER COUNTRY (e.g. group_by(country))

gapminder %>% 
  filter(continent == "Americas") %>% 
  filter(country == "Americas") %>% 
  summarize(            
    n_countries = length (unique(country)),
                          gdp_values = length(gdpPercap),
                          min = min(gdpPercap),
                          max = max(gdpPercap),
                          avg = mean(gdpPercap)
    )


# solution


gapminder %>% 
  filter(continent == "Americas") %>% 
  group_by(country) %>% 
  summarize(            
    gdp_avg = mean(gdpPercap)
 )


# do it for Africa and Asia

gapminder %>% 
  filter(continent %in% c("Americas", "Asia")) %>% 
  group_by(country) %>% 
  summarize(            
    countries = length(country),
    gdp_avg = mean(gdpPercap)
  )

# how can modify the data frame such that i have the country with highest gdp first and so on

gapminder %>% 
  filter(continent %in% c("Americas", "Asia")) %>% 
  group_by(continent, year) %>% 
  summarize(            
    n_countries = n(),
    lifeExp_avg = mean(lifeExp)
  ) %>% 
  arrange(lifeExp_avg) %>% 
  as.data.frame() -> continent_year_stats


# Add new file
