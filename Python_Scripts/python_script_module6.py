#!/usr/bin/env python
# coding: utf-8

# # Module 6

# In[1]:


# Working with files are easy with the open(filename, mode) function
# The mode indicates, how the file is going to be opened "r" for reading,
# "w" for writing and "a" for a appending.
# By default r is chosen

f = open("Test.txt")

# In order to avoid problems with directories (Cross-platform dependency),
# you can use the os.path.join
# However, this requires you to import the os module

import os
cwd = os.getcwd()
targetFile = os.path.join(cwd, "Test2.txt")
f2 = open(targetFile, "a")


# In[ ]:


# Accessing the file's data is done via looping or using the read(), readLine(),
# or readLines() functions

for line in f:
print(line.strip())

# readlines wil return a list of all the lines
# readLine will return the next line
# read will return one big string with everything


# In[ ]:


# Writing to a file is done via the write() function
# writelines will write a list of lines
# if the file was opened with the a flag, then the data is appended
# Otherwise, it is overwriten

f2.write("Appended data")

# Closing the file is required for teh changes to be saved

f2.close()


# In[ ]:


targetFile = os.path.join(cwd, "Test2.txt")
f2 = open(targetFile, "r")

# Read the lines in a single list

lines = f2.readlines()
for x in lines:
    print(x)


# In[ ]:


f = open("Test.txt")
lines = f.readlines()
for x in lines:
    # Remove trailing spaces
    x = x.strip()
    tempLine = list(x)
    tempLine.reverse()
    print("".join(tempLine))


# In[ ]:


# The die function is sys.exit()
import sys
sys.exit()


# In[ ]:


# In order to handle file errors,
# we have to try and catch the statements
try:
    open("FileDoesntExist.txt")
except:
    print("An error has occured")


# In[ ]:


# To open a binary file, an rb flag should be used
f = open("Test.txt", "rb")
f.read()


# In[ ]:


# Creating a directory is done via the os.mkdir command

dirName = "TestDirectory"

# Check if the directory doesn't exist

if not os.path.exists(dirName):
    os.mkdir(dirName)
    print("Directory " , dirName , " Created ")
else:
    print("Directory " , dirName , " already exists")


# In[ ]:


# Let's try creating it again
if not os.path.exists(dirName):
    os.mkdir(dirName)
    print("Directory " , dirName , " Created ")
else:
    print("Directory " , dirName , " already exists")


# In[ ]:


# Note the double slashes are required to escape them and make them literals
os.chdir('C:\\Users\\josep_000\\')
# Gettign teh current directory is done via the os.getcwd
print(os.getcwd())

# Changing the directory is done via the os.chdir()
os.chdir('C:\\')
print(os.getcwd())


# In[ ]:




