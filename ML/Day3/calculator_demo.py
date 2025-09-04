import Calculator as Calc
import math as m

print('sqrt from math module:', m.sqrt(16))

print('sum: ', Calc.add(5, 3))
print('difference: ', Calc.subtract(5, 3))
print('product: ', Calc.multiply(5, 3))
print('quotient: ', Calc.divide(5, 0))
print('power: ', Calc.power(5, 3))
print('modulus: ', Calc.modulus(5, 3))
print('floor division: ', Calc.floor_divide(5, 0))
print('square root: ', Calc.sqrt(-16))
print('factorial: ', Calc.factorial(5))
print('mean: ', Calc.mean([1, 2, 3, 4, 5]))
