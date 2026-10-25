#include <iostream>
#include <tchar.h>
using namespace std;

int _tmain(int argc, _TCHAR* argv[]) {
   system("chcp 1251");

    int P,sum,c,next,t = 0;
     sum = 0;
     c = 1;
     next = 5;
     t = 0;
	cout << "Введите число P: ";
    cin >> P;
    cout << "Ряд чисел: ";
    for (; sum <= P; ) {
        cout << c;
        sum = sum + c;
	    t = c + next;
        c = next;
        next = t;
		if (sum <= P) {
            cout << " + ";
        }
    }


    cout << " = " << sum << endl;
    cout << "Итоговая сумма s = " << sum << endl;
    system("pause");
    return 0;
}
