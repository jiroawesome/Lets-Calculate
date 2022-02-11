def add(x, y):

   return x + y

def subtract(x, y):

   return x - y

def multiply(x, y):

   return x * y

def divide(x, y):

   return x / y

print("Select operation: ")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")

choice = input("Select from above: ")

num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))

if choice == '1':
   print("The answer is: ", add(num1,num2))

elif choice == '2':
   print("The answer is: ", subtract(num1,num2))

elif choice == '3':
   print("The answer is: ", multiply(num1,num2))

elif choice == '4':
   print("The answer is: ", divide(num1,num2))
else:
   print("Invalid input")
