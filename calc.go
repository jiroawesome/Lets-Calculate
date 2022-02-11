package main

import (
  "fmt"
  "strconv"
  "os"
)
func Add(num1, num2 int) int {
        return num1 + num2
}

func Subtract(num1, num2 int) int {
        return num1 - num2
}

func Multiply(num1, num2 float64) float64 {
        return num1 * num2
}

func Divide(num1, num2 float64) float64 {
        return num1 / num2
}
func main() {
  getOperation:
        var operation string
  fmt.Print("Select operation: \n1. Add\n2. Subtract\n3. Multiply\n4. Divide\nSelect from above: ")
        fmt.Scanln(&operation)

  var num1 string
  fmt.Print("Enter the first number: ")
  fmt.Scanln(&num1)

  var num2 string
  fmt.Print("Enter the second number: ")
  fmt.Scanln(&num2)

  switch operation {
  case "1":
    var firstNumber int = stringToInt(num1)
    var secondNumber int = stringToInt(num2)
    fmt.Print("The answer is: ")
    fmt.Println(Add(firstNumber, secondNumber))
  case "2":
    var firstNumber int = stringToInt(num1)
    var secondNumber int = stringToInt(num2)
    fmt.Print("The answer is: ")
    fmt.Println(Subtract(firstNumber, secondNumber))

  case "3":
    var firstNumber float64 = stringToFloat64(num1)
    var secondNumber float64 = stringToFloat64(num2)
    fmt.Print("The answer is: ")
    fmt.Println(Multiply(firstNumber, secondNumber))

  case "4":
    var firstNumber float64 = stringToFloat64(num1)
    var secondNumber float64 = stringToFloat64(num2)
    fmt.Print("The answer is: ")
    fmt.Println(Divide(firstNumber, secondNumber))

  default:
    fmt.Println("Invalid input")
    goto getOperation
  }
}

func stringToInt(str string) int {
  i, err := strconv.Atoi(str)
  if err != nil {
    fmt.Println(err)
    os.Exit(2)
  }
  return i
}

func stringToFloat64(str string) float64 {
  f, err := strconv.ParseFloat(str, 64)
  if err != nil {
    fmt.Println(err)
    os.Exit(2)
  }
  return f
}
