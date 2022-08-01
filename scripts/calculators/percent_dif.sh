#!/usr/bin/python3

var1 = float(input("Enter the first value: "))
var2 = float(input("Enter the second value: "))

perc_diff = 100*((var1-var2)/var1)
print(f"the percent diff is {round(perc_diff, 4)}")
