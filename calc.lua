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
      print(add(inputNumber(), inputNumber()));
   elseif(selectedOperation == "2")then
      print(subtract(inputNumber(), inputNumber()));
   elseif(selectedOperation == "3")then
      print(multiply(inputNumber(), inputNumber()));
   elseif(selectedOperation == "4")then
      print(divide(inputNumber(), inputNumber()));
   else
      print("Wrong input");
   end
end
