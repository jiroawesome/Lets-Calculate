import java.util.Scanner;
public class calc {

  private static Scanner scanner;

  public static void main(String[] args) {
    while (true)
    {
      scanner = new Scanner(System.in);
      System.out.println("Select operation:"); 
      System.out.println("1. Add");
      System.out.println("2. Subtract");
      System.out.println("3. Multiply");
      System.out.println("4. Divide");
      System.out.println("Select from above: ");
      int choice = scanner.nextInt();
      if (choice >= 1 && choice <= 6) {
        System.out.println("Enter the first number: ");
        double operand1 = scanner.nextInt();
        System.out.println("Enter the second number: ");
        double operand2 = scanner.nextInt();
        double output = 0;
        switch (choice) {    
        case 1:
          output = operand1 + operand2;
          break;

        case 2:
          output = operand1 - operand2;
          break;

        case 3:
          output = operand1 * operand2;
          break;

        case 4:
          output = operand1 / operand2;
          break;


        }

        System.out.println("The result is: " + output);
      } else {
          System.out.println("Invalid input");
        }
      }
    }
  }
