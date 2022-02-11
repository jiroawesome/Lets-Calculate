# include <stdio.h>

int calculator(int num1, int num2, int method) {
	if (method == 1) {
		return num1 + num2;
	} else if (method == 2) {
		return num1 - num2;
	} else if (method == 3) {
		return num1 * num2;
	} else if (method == 4) {
		return num1 / num2;
	} else {
		printf("Invalid input");
	}
	
	return 0;
}

int main() {
	int num1, num2, method;
	printf("\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\nSelect from above: ");
	scanf("%d", &method);
	
	printf("Enter the first number: ");
	scanf("%d", &num1);
	
	printf("Enter the second number: ");
	scanf("%d", &num2);
	
	int vals = calculator(num1, num2, method);
	printf("The answer is: %d", vals);
	
	return 0;
}
