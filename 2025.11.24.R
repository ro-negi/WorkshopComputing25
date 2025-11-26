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



