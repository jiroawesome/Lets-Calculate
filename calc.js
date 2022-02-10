const prompt = require("prompt-sync")()

function add(x, y) {
    return x + y;
}

function subtract(x, y) {
    return x - y;
}

function multiply(x, y) {
    return x * y;
}

function divide(x, y) {
    return x / y;
}

console.log("Select operation: ")
console.log("1. Add")
console.log("2. Subtract")
console.log("3. Multiply")
console.log("4. Divide")
let choice = prompt("Select from above: ")
let num1 = parseInt(prompt("Enter the first number: "))
let num2 = parseInt(prompt("Enter the second number: "))

if (choice == "1") {
    console.log("The answer is: ", add(num1, num2))
}

if (choice == "2") {
    console.log("The answer is: ", subtract(num1, num2))
}

if (choice == "3") {
    console.log("The answer is: ", multiply(num1, num2))
}

if (choice == "4") {
    console.log("The answer is: ", divide(num1, num2))
}

if (choice < 1) {
    console.log("Invalid input")
}

if (choice > 4) {
    console.log("Invalid input")
}
