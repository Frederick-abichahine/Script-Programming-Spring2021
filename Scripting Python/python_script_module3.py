#!/usr/bin/env python
# coding: utf-8

# # Module 3

# In[1]:


# Looping can be done via a for loop and a while loop
# However the for loop is an iteratory, unlike the classical for loop in other languages
# Its syntax is for [tempVariable] in Object
# You can also loop through a string

for char in "Hellowz":
    print(char)


# In[2]:


# Looping in a range requires the use of range function
# It loops from 0 till the parameter passed excluded

for x in range(20): #20 not included
    print(x)


# In[7]:


import random
result= 0
summ=0
maxx=0
minn=7

for x in range(6):
    result= random.randrange(1,6)
    print("The dice's value is: ", result)
    summ+=result
    if result > maxx:
        maxx=result
    if result<minn:
        minn=result

print(summ)
print(maxx)
print(minn)


# In[3]:


# While maintains the classical syntax
# break works just like any language (In Perl it is last)
# Continue replaces the next statement in Perl

x=0

while True:
    x=x+1
    print(x)
    
    if x==2:
        x=x+1
        print("skipping an extra step")
        continue
        
    if x==5:
        print(x)
        break


# In[5]:


# Python does not support labels like Perl


# In[5]:


# You can stop a python script via the exit function
exit()


# In[5]:


# The in operator can check for subtrings
if "in" in "Maxinger":
    print("found")
else:
    print("Not found")
    
# .index() and .find() can be called to find the index of a character
# The main difference is that index returns -1 if not found and raises an error
# find simply returns -1

print("Hellowz".index("ll")) #returns first instance of l
print("Hellowz".find("sad"))

# rindex is the same as index except if starts searchign the string from the right side


# In[2]:


# Printing formatted text can be done via the % operator which replaces the variable
# Multiple variables are passed via a tuple (var1, var2). These will be discussed later

print("Hello, my name is %s. I am %d years old" % ("Ralph", 24))

