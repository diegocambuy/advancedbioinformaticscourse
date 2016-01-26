### Assigmenmt for the course of Advanced Bioinformatics, Data mining and data intergration for biomedical reserach###
###Assignment 1 

import math  ### importing python package that contains the function cos 

t_1=range(-10,11,1) ## this creates a list ranging from -10 to 10 with intervals of 1


t_2=[] ## empty list that will recieve the values of cos from t_1


for x in t_1:                          ###this loop takes each element (x) of t_1, calculates 2* cos (x) and appends it to t_2
  y=2* math.cos(x)
  t_2.append(y)


import matplotlib.pyplot as plt  ## importing the package  matplotlib where the function plot is 

plt.plot(t_1,t_2) ## creating the plot
plt.show()  ## visualization of the plot


