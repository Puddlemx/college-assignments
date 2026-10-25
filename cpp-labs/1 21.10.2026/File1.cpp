#include <iostream>
#include <string>
#include <windows.h>
#include <tchar.h>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{system("chcp 1251");
    int len, p, m, i;
    string s;
	cout << "Введите символьную строку: ";
	getline(cin, s);
	len = s.size();
	p = 0;
	m = 0;
    for (i = 0; i < len; i++) {
        if (s[i] == '+')
            p++;
        else if (s[i] == '-')
			m++;
    }

    cout << "Плюсов: ";
    if (p == 0)
		cout << "Таких символов нет ";
    else
		cout << p;
		cout<<endl;

	cout << "Минусов: ";
    if (m == 0)
		cout << "Таких символов нет ";
    else
		cout << m;
		cout<<endl;
	system("pause");
    return 0;
}
