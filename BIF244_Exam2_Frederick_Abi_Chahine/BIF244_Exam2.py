#!/usr/bin/env python
# coding: utf-8

# # Frederick Abi Chahine - BIF244 Exam 2

# Question 1

# In[17]:


seq= input("Input a short DNA sequence: ")
seq_list= [x for x in seq]
#print(seq_list)
for x in range(len(seq_list)):
    if seq_list[x]=='T':
        seq_list[x]='U'

seq= "".join(seq_list)
print(seq)


# Question 2

# In[28]:


import sys
import os

files_in_dir=os.listdir()

file1= input("Enter first file name: ")
while (file1 not in files_in_dir): #add condition to check if readable
    print("Invalid file. Try again")
    file1= input("Enter first file name: ")
f1= open(file1)
while f1.readable()==False:
    print("File 1 is not readable")
    file1= input("Enter first file name: ")
    while (file1 not in files_in_dir): #add condition to check if readable
        print("Invalid file. Try again")
        file1= input("Enter first file name: ")

file2= input("Enter second file name: ")
while file1 not in files_in_dir: #add condition to check if readable
    print("Invalid file. Try again")
    file2= input("Enter second file name: ")
f2= open(file2)
while f2.readable()==False:
    print("File 2 is not readable")
    file2= input("Enter second file name: ")
    while file1 not in files_in_dir: #add condition to check if readable
        print("Invalid file. Try again")
        file2= input("Enter second file name: ")

col_title= input("Enter column title that needs to be merged: ")

header1= f1.readline().strip()
l1= [] + header1.split('\t')
header2= f2.readline().strip()
l2= [] + header2.split('\t')

if (col_title in l1) and (col_title in l2):
    print("Column title found in both files!")
    
    dict1= {} #key= student_id, value= everything else
    dict2= {}
    half_keys= []
    all_keys= []
    temp_values= []
    all_values= []
    mergedDict= {} #key= all_keys, value= concatenate value in dict1 and 2
    count_ids= 0
    
    for x in f1:
        index=0
        t=x
        ids= ""
        for c in t:
            if c!='\t':
                ids+= c
                index+=1
            else:
                break
        half_keys.append(ids)
        all_keys.append(ids)
        t= t[index:]
        t= t.strip()
        temp_values= t.split('\t')
        all_values.append(temp_values) #created a 2D list
    
    for a in range(len(half_keys)):
        dict1[half_keys[a]]= all_values[a]
    
    all_values= []
    half_keys= []
    
    for x in f2:
        index=0
        t=x
        ids= ""
        for c in t:
            if c!='\t':
                ids+= c
                index+=1
            else:
                break
        half_keys.append(ids)
        all_keys.append(ids)
        t= t[index:]
        t= t.strip()
        temp_values= t.split('\t')
        all_values.append(temp_values) #created a 2D list
        
    for a in range(len(half_keys)):
        dict2[half_keys[a]]= all_values[a]
    
    count_common_ids= 0
    count_unique_ids= 0
    
    for i in dict1:
        app_list= []
        if i in dict2:
            app_list+= dict2[i] + dict1[i]
            mergedDict[i]= app_list
            del(dict2[i])
            count_common_ids+=1
        else:
            mergedDict[i]= dict1[i]
            count_unique_ids+=1
    
    for i in dict2:
        count_unique_ids+=1
        mergedDict[i]= dict2[i]
    
    print("Number of common IDs: ", count_common_ids)
    print("Number of unique IDs: ", count_unique_ids)
    print()
    
    writeFile= open("mergedFiles.txt", 'w')
    header_final= "" + "".join(l2[0]) + '\t' + "".join(l2[1]) + '\t' + "".join(l2[2]) + '\t' + "".join(l1[1]) + '\t' + "".join(l1[2]) + '\t' + "".join(l1[3]) + '\t' + "".join(l1[4]) + "\n"
    writeFile.write(header_final)
    #print(header_final)
    writeFile.close()
    writeFile= open("mergedFiles.txt", 'a')
    for x in mergedDict:
        info= "" + x + "\t" + "\t".join(mergedDict[x]) + "\n"
        writeFile.write(info)
        #print(info)
    writeFile.close()
    
    enter_id= input("Enter ID of student: ")
    if enter_id in mergedDict:
        new_string= "" + " ".join(mergedDict[enter_id])
        print(enter_id, ":", new_string)
    else:
        print("ID of student not found in merged dictionary")
    
elif (col_title in l1) and (col_title not in l2):
    print("Column title not found in: ", file2)
    
elif (col_title not in l1) and (col_title in l2):
    print("Column title not found in: ", file1)
    
elif (col_title not in l1) and (col_title not in l2):
    print("Column title not found in both files:", file1, "and", file2)


# In[ ]:




