#include <iostream>
 #include <tchar.h>
using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{system("chcp 1251");
	float x, y;
    cout << "Введите число x = ";
	cin >> x;
	if (x == 1) {
        cout << "Ошибка, на ноль делить нельзя" << endl;
    } else {
        y = x / (x - 1);
		cout << "Ответ: y = " << y << endl;
}
	 system("pause");
    return 0;
}

