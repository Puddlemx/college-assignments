#include <iostream>
#include <tchar.h>
using namespace std;

int _tmain(int argc, _TCHAR* argv[]) {
  system("chcp 1251");
  int n, c, e, d, s;
  s = 0;
  cout << "Введите трёхзначное число n = ";
  cin >> n;

  e = n / 100;
  d = (n / 10) % 10;
  c = n % 10;
  s = e + d + c;

  cout << "Сумма цифр трехзначного числа s = " << s << endl;
  system("pause");
  return 0;
}
