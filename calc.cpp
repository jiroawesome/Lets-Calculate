#include<iostream>
#include<stdlib.h>
using namespace std;
class calculator
{
	int x = 0;
	int y = 0;
	int m = 0;
	public:
	int add(int a,int b)
	{
		return a+b;
	}
	int sub(int a,int b)
	{
		return a-b;
	}
	int multiply(int a,int b)
	{
		return a*b;
	}
	int divide(int a,int b)
	{
		return a/b;
	}

};
int main(int argc,char *argv[])
{
	int x,y,m;
	if(argc>1)
	{
	x=atoi(argv[1]);y=atoi(argv[2]);
	}
	else
	{
    std::cout<<"Select operation: \n1. Add\n2. Subtraction\n3. Multiply\n4. Divide\n";
    cout<<"Select from above: ";
    cin>>m;
	cout<<"Enter the first number: ";
	cin>>x;
	cout<<"Enter the second number: ";
	cin>>y;
	}
	calculator c;
	if (m == 1) {
		int a = c.add(x,y);
	    cout<<"The answer is: "<<a<<"\n";
	};
	if (m == 2) {
		int a = c.sub(x,y);
    	cout<<"The answer is: "<<a<<"\n";
	};
	if (m == 3) {
		int a = c.multiply(x,y);
    	cout<<"The answer is: " <<a<<"\n";
	};
	if (m == 4) {
		int a = c.divide(x,y);
	    cout<<"The answer is: "<<a<<"\n";
	};
	return 0;
}
