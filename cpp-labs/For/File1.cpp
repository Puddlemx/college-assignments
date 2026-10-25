#include <iostream>
#include <tchar.h>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{ system("chcp 1251");
int a, b,sum;
	cout << "¬ведите число a: ";
    cin >> a;
    cout << "¬ведите число b: ";
	cin >> b;
  sum=0;
	 for (int i = 0; i < b; i++) {
		sum += a;
	}
      cout << "–езультат умножени€: " << sum << endl;
  system("pause");
	return 0;
}
