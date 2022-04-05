#!/usr/bin/env python
# coding: utf-8

# # Module 8

# In[1]:


# Python works differently than other languages in referencing
# This is dependent if the object is mutabel or immutable
# Notice the following behavior
# The variables are independent

x = 8
y = x
print(x, y)

x = 9 #acts like a new x, unlike java
print(x, y)

y = y + 1
print(x, y)

# Check the following
# Notice how modifying the original or the copy changes both

x2 = [2, 3, 4]
y2 = x2 #both are pointing to the same list, so modifying one means we are modifying the other
y2.append(2)
print(y2, x2)


# In[2]:


# Methods create local copies of the passed values so replacing it will not change anything
# Strings are immutable
# Therefore the value is passed and not the reference

def replaceString(the_string):
    the_string = "New string"
    print('inner String', the_string)
    
outer_string = 'Old String'
print('Outer string, before =', outer_string)
replaceString(outer_string)
print('Outer string, after =', outer_string)


# In[3]:


# Lists are mutable
# In place changes take effect
#since lists pass the reference rather than value, unlike strings

def appendToList(list):
    list.append("New Element")
    
l = ['Old Element1', 'Old Element2']

print('Outer list, before =', l)
appendToList(l)
print('Outer list, after =', l)


# In[4]:


# Concatenating works and modifies the original

def appendToList(list):
    list = list + ['New Element1', 'New Element2']
    print("Inner list", list)

l = ['Old Element1', 'Old Element2']

print('Outer list, before =', l)
appendToList(l)
print('Outer list, after =', l)


# In[5]:


# Consider the following example
# self is the same as this in Java and other languages
# Variables in objects are modified
# We will define a new object called testObject

class testObject:
    
    def __init__(self):
        self.a = 1
        
    def __str__(self):
        # Another way of formatting instead of the '%' operator
        return "The value of A is {}.".format(self.a)
    
    def changeA(self):
        self.a = 2
        
# Method to modify internal value
def modifySelf(obj):
    obj.a = 5

# Outer Scope
newObject = testObject()
print("Outer object, before", newObject)
modifySelf(newObject)
print("Outer object, after", newObject)


# In[6]:


# Scope and referencing is different when importing a namespace
# More information can be found in https://docs.python.org/3/tutorial/classes.html

