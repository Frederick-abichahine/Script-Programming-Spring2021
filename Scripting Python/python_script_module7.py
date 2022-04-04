#!/usr/bin/env python
# coding: utf-8

# # Module 7

# In[2]:


# Functions can be defined using the 'def'

def method1():
    print("Method 1 called")

method1()


# In[3]:


# You can define as many variables as you want

def method2(variable):
    # A local copy of the variable is created
    print("Method 2 called with variable "+str(variable))

method2(2)


# In[4]:


# You can set default values as parameters

def method3(variable = "default", variable2 = "default2"):
    print(variable, variable2)

method3()


# In[5]:


# You can call the method,
# passing the variables by name

method3(variable2 = "newDefault2")

# The following line (Commented) cannot be called
# method3(variable = "newDefault1", variable2)

method3(variable = "newDefault1", variable2 = "newDefault2")
method3("newDefault1", "newDefault2")


# In[6]:


# A method can have a return type of anything
# Returns a tuple

def returnedMethod():
    return (2, 3)
print(returnedMethod())

def returnedMethod2():
    return [2, 3]
print(returnedMethod2())

def multiply(a, b, c):
    return a*b*c
print(multiply(2, 2, 3))

# Notice the behavior in the following:
# 2 * 3 = 6
# 6 * a = aaaaaa

print(multiply(2, 3, 'a'))


# In[7]:


# Parameters in the functions can be any type of variable
# Python does not have a prototype like perl


# In[11]:


# Python's scope is similar to any language except that it can access global variables
# via the 'global' modifier
# Global variable
globalV = 3

def method4():
    # globalv is not defined
    print(globalv) #v not V

def method5():
    # Local variable
    localVar = "Local Variable"
    global globalV
    print(globalV)
    
method5()
# Notice how the previous function runs and the next line gives an error
method4()


# In[ ]:


# Strict typing cannot be done in python
# Python debuggers work via the pdb module
# Reference found at https://docs.python.org/2/library/pdb.html

