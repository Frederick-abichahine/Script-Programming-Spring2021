#!/usr/bin/env python
# coding: utf-8

# # Module 4

# In[15]:


# Tuples can be created in the same manner as python and can contain any type of variable
#difference between arrays and lists: arryas hold elements of the same type in java while lists can hold different types
l = ("test", 123, ("Hellow", 555))

print(l)
print(l[1])
print(l[0])


# In[2]:


# Accesing a tuple is via the index
print(l[0], l[1], l[2])


# In[3]:


# A list may be sliced according to the indexes. The first is inclusive, the last is excluded
print(l[0:2])

# Negative indexes may be used
print(l[-2])

# A range can be from index to end or from start to end
print(l[1:], "and", l[:2]) #last index is exclusive


# In[4]:


# Getting the length means using the len() function
print(len(l))


# In[5]:


# Once values are assigned they cannot be changed
l[0] = 2


# In[2]:


# Concatenation can be performed on lists
print((1, 2, 3) + (4, 5, 6))

# Multiplication to repeat elements can also be applied
print(("Repeat",) * 3)


# In[19]:


numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# An alternative is to programmatically create a tuple from a list / array using
# the tuple function (lists will be discussed later)
# Remember that the range function returns a list / array

numbers2 = tuple(range(1, 11))
print(numbers, numbers2)

# Get all odd and even numbers
# These are stored in a new type of data structure called the generator class which you can loop in

oddNumbers = (x for x in numbers if x % 2 == 1)
evenNumbers = (x for x in numbers if x % 2 == 0)

print("Odd")
for x in oddNumbers:
    print(x)
    
print("Even")
for x in evenNumbers:
    print(x)


# In[9]:


# An alternative would be to create a list / array instead of a tuple
    
oddNumbers = [x for x in numbers if x % 2 == 1]
evenNumbers = [x for x in numbers if x % 2 == 0]

print("Odd", oddNumbers, "Even", evenNumbers)


# In[46]:


# Lists can be though of as Arrays and mimic queues. They can contain all data types

array = [0, 1, 2, 3, 4, 5, "Hi"]
print(array)


# In[6]:


# Certain data structures can be converted to a list/array via the list() function

l2 = list("TESTING")
print(l2)


# In[12]:


# Other data structures will call TypeError if they cannot be converted
l3 = list(123123)


# In[47]:


# Adding to a list means using the append() function. You can also concatenate 2
# lists using the +
array.append("List")
print(array)


# In[48]:


# Replacing an element is the same as accessing it in a tuple
print(array[1])
array[1] = "New Value"
print(array)


# In[30]:


# Accessing the range is the same as a list, a subset of list
array[2:4]


# In[49]:


# Certain functions allow easy manipulation of a list
array.reverse() # Inline function; orignal array modified
print(array)


# In[50]:


# Removing an element at means using the pop(index) function
# Removing the first occurence of 'x' means using the remove(value) function
# Returns the value
print(array.pop(1))
# Does not return the value
print(array.remove("New Value")) #this removes the first occurance of "New Value"
# Reprint the array to see the changes
print(array)


# In[51]:


# Arrays have an in-built sorting function
# However, this only works if all the data types are the same
print(array.sort())


# In[19]:


array2 = ['a', 'd', 'b', 'e']
array2.sort()
print(array2)


# In[20]:


names = ["George", "Tony", "Maria", "Joseph", "Rami"]
names.sort()
print(names)


# In[21]:


# Spaceship operators are not found in python as it is strict in comparisons. An alternative
# would be to use the total_ordering class.
# Details found in https://portingguide.readthedocs.io/en/latest/comparisons.html


# In[52]:


# Split works and results in a list. You just have to pass
# the delimiter

"Hello, my name is Joseph. This is a test".split(" ")
a= input("What are the letters?").split(" ")
print(a)


# In[24]:


Audios = ["Title1 1999 Artist1"]
Audios = Audios + ["Title2 2000 Artist2"]
Audios.append("Title3 2001 Artist3")
Audios.append("Title4 2002 Artist4")
Audios.append("Title5 2003 Artist5")


# In[25]:


Audios


# In[26]:


for entry in Audios:
    result = entry.split(" ")
    print("Title:", result[0])
    print("Release Date:", result[1])
    print("Artist:", result[2])

# Accessing the index using the enumerate function
# BE careful to force the int to become an str using the str function

for index, entry in enumerate(Audios):
    result = entry.split(" ")
    print("Entry number "+ str(index), "Title:", result[0], "Release Date:", result[1])


# In[ ]:




