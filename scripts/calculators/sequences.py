import math
# sequences
#
# Arithmetic: difference between pairs are the same.
#
# arithmetic
# initial value, difference plug into a0 + d(n-1)
# mean: a+b/2
# sum = mean*n
#
# geo
# formula: a0(r)^n-1
# mean: sqrt(a*b)
# sum = 

def arithmetic_sequence(start:int, step:int):
    sequence=[]
    for i in range(10):
        sequence.append(start + step(i-1))
    return sequence

def arithmetic_mean(a:int,b:int):
    return (a+b)/2

def arithmetic_partial_sum(a:int, b:int, b_index:int):
    return arithmetic_mean(a,b)*b_index

def geometric_sequence(start:int, ratio:float):
    sequence=[]
    for i in range(10):
        sequence.append(start*(ratio**(i-1)))
    return sequence

def geometric_mean(a:int, b:int):
    return (a*b)**0.5
