#include <iostream>
#include <tchar.h>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{  system("chcp 1251");
     int n;
	cout << "Введите количество элементов массива: ";
	cin >> n;

	int a[100];
	cout << "Введите элементы массива: ";
	for (int i = 0; i < n; i++) {
		cin >> a[i];
	}

	cout << "Изначальный массив: ";
	for (int i = 0; i < n; i++) {
		cout << a[i] << " ";
	}
	cout << endl;

	int min = a[0];
	int in = 0;
	for (int i = 1; i < n; i++) {
		if (a[i] < min) {
			min = a[i];
			in = i;
		}
	}  cout << "Минимальный элемент: " << min << endl;

	int sum = 0;
	for (int i = in + 1; i < n; i++) {
		if (a[i] > 0) {
			sum = sum + a[i];
		}
	}
	cout << "Сумма положительных элементов после минимального: " << sum << endl;
	system("pause");
	return 0;
}

