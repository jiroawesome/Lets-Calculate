function add(firstNumber, secondNumber)
   return firstNumber + secondNumber;
end

function subtract(firstNumber, secondNumber)
   return firstNumber - secondNumber;
end

function multiply(firstNumber, secondNumber)
   return firstNumber * secondNumber;
end

function divide(firstNumber, secondNumber)
   return firstNumber / secondNumber;
end

function inputNumber()
   io.write("Enter a number: ");
   number = io.read();
   return number;
end

while true do
   print("Select operation: ");
   print("1. Add\n2. Subtract\n3. Multiply\n4. Divide");
   io.write("Select from above: ");
   selectedOperation = io.read();
   if(selectedOperation == "0")then
      break;
   elseif(selectedOperation == "1")then
      print("The answer is:", add(inputNumber(), inputNumber()));
   elseif(selectedOperation == "2")then
      print("The answer is:", subtract(inputNumber(), inputNumber()));
   elseif(selectedOperation == "3")then
      print("The answer is:", multiply(inputNumber(), inputNumber()));
   elseif(selectedOperation == "4")then
      print("The answer is:", divide(inputNumber(), inputNumber()));
   else
      print("Wrong input");
   end
end
