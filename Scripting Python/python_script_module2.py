#!/usr/bin/env python
# coding: utf-8

# # Module 2

# In[2]:


# if statements require an indented block
# We use the ':' to introduce the block and indent for the block
x= 5

if x<10:
    print("Hello")
else:
    print("Bye")
    
# Nested if statements require several block

if x<10:
    if x<5:
        print("Less than 5")
    if x==5:
        print("Equal to 5")
    else:
        print("Greater than 5, but less than 10")
else:
    print("Greater than 10")


# In[2]:


sum = 50

if sum%2==0:
    print("Even")
else:
    print("Odd")
    
sum = 75 #changes 

if sum%2==0:
    print("Even")
else:
    print("Odd")


# In[3]:


# mutltiple if statements can be used by replacing the subsequent conditions with elif
#takes the previous sum, in this case 75

if sum<40:
    print("Less than 40")
elif sum<80:
    print("Between 40 and 80")
else:
    print("Greater or equal to 80")


# In[6]:


# Getting input from the user requires the use of input("Question") for information from the keyboard

var= input("What is the value of var? ")
print(var)


# In[1]:


# rstrip() replaces chomp in Python
# This function returns the new string

test = "Hello. My name is XOXO. This is my story\n"
print(test)

print("--------------")
newString= test.rstrip()
print(newString)
print("--------------")


# In[6]:


import random
randomNum= random.randrange(100)

guessedNumber= input("What is the number that was generated?")
guessedNumber= int(guessedNumber)

if randomNum== guessedNumber:
    print("Correctly guessed!")
else:
    print("The number generated was", randomNum)
    print("The difference is", randomNum - guessedNumber)


# In[7]:


# Python compares strings using the regular comparison operators
if "A" > "z":
    print("A iz greater than z")
else:
    print("It is not")
print("A" > "z", "A" == "z", "A" < "z")


# In[9]:


# Logical and (&&) is the 'and' operator
# Logical or (||) is the 'or' operator
# Notice that True and False must be capitalized
# ! is replaced with the not

print(True and False)
print(True or False)
print(not True)


# In[10]:


# Several Conditions may be added and combined
x= 7

if x>5 and x<10:
    print("Betweem 5 and 10")
    
# Parathesis are not required

if (x>5) and (x<10):
    print("Between 5 and 10")


# In[12]:


# You can assign parameters based on certain conditions in a shofthand way
a = int(input("What is a? "))
b = int(input("What is b? "))
x = "Greater" if a > b else "Less"
print(x)

