def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    if b != 0:
        return a / b
    else:
        return "Division by zero error"
    
def power(a, b):
    return a ** b

def modulus(a, b):
    return a % b

def floor_divide(a, b):
    if b != 0:
        return a // b
    else:
        return "Division by zero error"

def sqrt(a):
    if a >= 0:
        return a ** 0.5
    else:
        return "Square root of negative number error"

def factorial(n):
    if n < 0:
        return "Factorial of negative number error"
    elif n == 0 or n == 1:
        return 1
    else:
        result = 1
        for i in range(2, n + 1):
            result *= i
        return result

def mean(numbers):
    if len(numbers) == 0:
        return "List is empty"
    return sum(numbers) / len(numbers)



