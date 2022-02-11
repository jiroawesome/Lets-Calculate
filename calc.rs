use std::io;
use std::process;
fn main() {
  let mut sum = String::new();

  println!("Enter the first number: ");

  io::stdin().read_line(&mut sum).unwrap_or_else(|err| {
    eprintln!("Application Error: {}", err);
    process::exit(1);
  });
  let mut sum:f64 = sum.trim().parse().unwrap_or_else(|err| {
    eprintln!("Application Error: {}", err);
    process::exit(1);
  });
  loop {
    let mut choice = String::new();
    println!("\nSelect operation: ");
    println!("1. Add");
    println!("2. Subtract");
    println!("3. Multiply");
    println!("4. Divide");
        println!("Select from above: ");
    io::stdin().read_line(&mut choice).unwrap_or_else(|err| {
      eprintln!("Application Error: {}", err);
      process::exit(1);
    });
    let choice = choice.trim() as &str;
    match choice {
      "1" | "1." | "+" => {
        println!("Enter the second number: \"{}\" - Current", sum);
        let choice = convert();
        println!("The answer is: {} + {} = {}", sum, choice, sum + choice);
        sum += choice;
      }
      "2" | "2." | "-" => {
        println!("Enter the second number: \"{}\" - Current", sum);
        let choice = convert();
        println!("The answer is: {} - {} = {}", sum, choice, sum - choice);
        sum -= choice;
      }
      "3" | "3." | "*" | "x" | "X" => {
        println!("Enter the second number: \"{}\" - Current", sum);
        let choice = convert();
        println!("The answer is: {} * {} = {}", sum, choice, sum * choice);
        sum *= choice;
      }
      "4" | "4." | "/" | "÷" => {
        println!("Enter the second number: \"{}\" - Current", sum);
        let choice = convert();
        println!("The answer is: {} / {} = {}", sum, choice, sum / choice);
        sum /= choice;
      }
      &_ => {
        eprintln!("Invalid input");
        process::exit(1);
      }
    }
  }
}
fn convert()->f64 {
  let mut choice = String::new();
  io::stdin().read_line(&mut choice).unwrap_or_else(|err| {
    eprintln!("Application Error: {}", err);
    process::exit(1);
  });
  let choice:f64 = choice.trim().parse().unwrap_or_else(|err| {
    eprintln!("Application Error: {}", err);
    process::exit(1);
        });
  return choice;
}
