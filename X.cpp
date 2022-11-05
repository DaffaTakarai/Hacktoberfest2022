#include <iostream>

using namespace std;

int main()
{
  int num1;
  int num2;
  string operator;
  int answer = 0;
  
  cout << "First Number : ";
  cin >> num1;
  cout << "Second Number : ";
  cin >> num2;
  cout << "Operator [+ - * /] : ";
  cin >> operator;
  
  if (operator == "+")
  {
    answer = num1 + num2;
    cout << "Answer : " << answer;
  }
  else if (operator == "-")
  {
    answer = num1 - num2;
    cout << "Answer : " << answer;
  }
  else if (operator == "*")
  {
    answer = num1 * num2;
    cout << "Answer : " << answer;
  }
  else if (operator == "/")
  {
    answer = num1 / num2;
    cout << "Answer : " << answer;
  }
  else
  {
    cout << "WRONG OPERATOR !!!";
  }
  
  return 0;
}
