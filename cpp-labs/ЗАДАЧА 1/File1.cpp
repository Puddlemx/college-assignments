#include <iostream>
#include <tchar.h>
   using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{
    system("chcp 1251");
	int a, b, S, P;
	cout << "¬ведите a=";
    cin >> a;
	cout << endl;
    cout << "¬ведите b=";
    cin >> b;
	cout << endl;
    P = (a + b) * 2;
	S = a * b;
	cout << "P=" << P << " S=" << S << endl;
    system("pause");
    return 0;
}

