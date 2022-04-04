#!/usr/bin/env python
# coding: utf-8

# # Module 1

# In[1]:


# !/usr/bin/env python


# In[2]:


# Tabs are important in Python
# Statements do not have to end with a semicolomn
# Print in 3.7 can take multiple parameters, and are separated automatically by spaces

print("Hello")
print("This", "is", "number", 1)


# In[4]:


# Variables can be assigned any time. They do not have to be declared as scalar
x= 8
print(x)
x= "Hello"
print(x)


# In[6]:


# Variables are case sensitive
X= "Hello2"
print(X)
print(x) #from previous cell


# In[7]:


# Same escape sequences work
print("Line1\nLine2\n\\Line3")
# \n means new line
# \\ will print \ literally
# \ is an escape character


# In[16]:


# Variable types are automatically inferred
num1= 2
num2= 3
num= num1+num2
print(num)
type(num) #this displays the type of the variable


# In[18]:


# Unlike perl, there is no $_ / default variable
# '_'

10 + 20


# In[19]:


# Using the _ will print the last value
_


# In[20]:


# Same mathmatical rules and operations, as Perl, apply in python
x= -(-6)
print(x)


# In[22]:


# There are no increment as x++
x++


# In[23]:


# Shorthand apporaches such as var+= or var-= work
x+=5
print(x)


# In[24]:


# We have to call for a classical approach
x= x + 1
print(x)


# In[27]:


# The x operator in perl is similar to * in Python
print("str" * 2)
x = "Hellowz"
x * 5
print(x * 5)


# In[28]:


# rnadom is not a native function
random(5)


# In[74]:


# We need to import the module with this function
# .random() will call a function that Return the next random floating point number in the range [0.0, 1.0)
import random
print(random.randint(1,5)) #1 and 5 inclusve
print(random.randrange(1,2)) #2 exclusive
print(random.random())


# In[20]:


# Python, unlike perl, cannot automatically convert values
"6"-2


# In[34]:


# Conversion must be explicity set
int("6") - 2


# In[36]:


# Block in Python must be done via 'tabs'. The block is introduced via a ':' if and only
# if it applies in the syntax (if statement, loop, etc)
if True:
    print("This is True")
else:
    print("This is False")
if False:
    print("This is True")
else:
    print("This is False")


# In[38]:


# Basic Dice Application
# randrange returns an integer between 1 and 6
dice1 = random.randrange(1, 6)
print("The value of dice 1 is ", dice1)

dice2 = random.randrange(1, 6)
print("The value of dice 2 is ", dice2)

dice3 = random.randrange(1, 6)
print("The value of dice 3 is ", dice3)

dice4 = random.randrange(1, 6)
print("The value of dice 4 is ", dice4)

dice5 = random.randrange(1, 6)
print("The value of dice 5 is ", dice5)

sum = dice1 + dice2 + dice3 + dice4 + dice5
print("Sum:", sum)

