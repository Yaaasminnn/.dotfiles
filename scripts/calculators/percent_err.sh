#!/usr/bin/python3
"""
    Calculates the percent error between 2 values.
    takes in an experimental(measured) value and a theoretical(calculated)

    formula:
        %Err = ((measured - calulated) / calculated) * 100%
"""

measured = float(input("Enter the experimental(measured) value: "))
calculated = float(input("Enter the theoretical(calculated) value: "))

perc_diff = 100*( (measured - calculated) / calculated )
print(f"the percent error is {round(perc_diff, 4)}")
