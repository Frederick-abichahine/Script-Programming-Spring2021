#!/usr/bin/env python
# coding: utf-8

# # Module 5

# In[1]:


# You can use the join function
# However this is a function of the string itself that takes the
# list as a parameter. The seperator is the string upon which you
# call the function

" ".join(["Hello", "this", "is", "a", "test"])


# In[2]:


# ints must be converted to a string for the concatenation to work
numbers = [str(x) for x in range(0, 11)]

print("Correct:", "-".join(numbers))

# Otherwise
incorrectFormat = [x for x in range(0, 11)]
print("Incorrect:", "-".join (str(incorrectFormat)))


# In[3]:


l = list("This is a test")
l.reverse()
"-".join(l)


# In[4]:


# Hashes are dictionnaries
# They are similar to the Json format and are very powerful
# Every key has a value and they are always in pairs
dic = {
'a': 2,
'b': 3,
'c': 4
}

# Accessing the values is through the key
dic['a']


# In[5]:


# You can also add or modify as many values as you need in the same manner

dic['a'] = 6
dic['newDic'] = 'Hellow'

print(dic)


# In[1]:


addressBook = {}
addressBook['Rami'] = "Koura"
addressBook['Joseph'] = "Daraya"
addressBook['Maria'] = "Sahel Alma"
x = input("Who are you looking for?")

if x in addressBook:
    print(addressBook[x])
else:
    print("Not in adress book")


# In[10]:


# To get the keys we use a classical loop
for x in addressBook:
    print(x, ":", addressBook[x])


# In[11]:


# To get the keys and values in the same loop
# We needs to use the .items() function
for key, value in addressBook.items():
    print(key, value)


# In[12]:


# Order is maintained based on the same order of addition
# Sorting it uses the OrderedDictionary
# http://docs.python.org/library/collections.html#collections.OrderedDict


# In[13]:


# Removing values is done via the .pop() function
# True is printed if found and removed
# Otherwise a key error is called

print(addressBook.pop("Rami"))
print(addressBook.pop("N/A"))


# In[14]:


# Fix the above error we use the 'if in' operators
if "N/A" in addressBook:
    print("Exists")
else:
    print("Does not Exist")


# In[7]:


# To find common keys, we have to tranform it into a set

myRDP = { 'Actinobacter': 'GATCGA...TCA', 'subtilus sp.': 'ATCGATT...ACT' }
myNames = { 'Actinobacter': '8924342' }

rdpSet = set(myRDP)
namesSet = set(myNames)

myRDP["Homosapiens"]= "ATGAT...TTC" #will add it to the dictionary in an alphabetical order
print(myRDP)
del(myRDP["Homosapiens"]) #to delete the key, can also use pop
print(myRDP, "\n")
#myRDP.pop("Homosapiens")
#print(myRDP, "\n")

for name in rdpSet.intersection(namesSet):
    print(name, myNames[name])
    print(name, myRDP[name])

# Or use a classical loop approach like the next example


# In[3]:


Array1 = [0, 1, 2, 3, 4, 5]
Array2 = [0, 2, 4, 5]

for x in Array1:
    if x in Array2:
        print(x, "Exists in both Arrays")
    else:
        print(x, "Doesn't exist in Array2")


# In[ ]:




