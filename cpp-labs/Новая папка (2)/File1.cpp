#include <iostream>
#include <tchar.h>
#include <string>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
    system("chcp 1251");

    string t;
    int i, c;
    int b = 0;
    int p = -1;
    int f = 0;

    cout << "Введите строку: ";
    getline(cin, t);

    for (i = 0; i < t.length(); i++) {
        c = t[i];
        if (c == '(' || c == ')') {
            f = 1;
        }
    }

    if (f == 0) {
        cout << "Нет таких символов" << endl;
    }
    else {
        for (i = 0; i < t.length(); i++) {
            c = t[i];

            if (c == '(') {
                b = b + 1;
            }
            else if (c == ')') {
                b = b - 1;
                if (b < 0 && p == -1) {
                    p = i + 1;
                }
            }
        }

        if (b > 0) {
            for (i = t.length() - 1; i >= 0; i--) {
                c = t[i];
                if (c == '(') {
                    p = i + 1;
                    break;
                }
            }
        }

        if (b == 0 && p == -1) {
            cout << "Все скобки закрываются: 0" << endl;
        }
        else if (b == 0 && p != -1) {
            cout << "Скобки не закрываются: -1" << endl;
        }
        else {
            cout << "Присутствует лишняя скобка в позиции: " << p << endl;
        }
    }

    system("pause");
    return 0;
}

