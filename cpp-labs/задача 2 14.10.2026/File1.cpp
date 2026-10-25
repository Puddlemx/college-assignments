#include <iostream>
using namespace std;

int MaxI(int k, int d[]) {
    if (k <= 0) {
        return 0;
    }
    int vm = d[0];
    for (int i = 0; i < k; i++) {
        if (vm < d[i]) {
            vm = d[i];
        }
    }
    return vm;
}

int main() {
    system("chcp 1251");
    int a[10], b[10], n, m, x, max, z;

    cout << "Введите количество элементов массива n = ";
    cin >> n;
    if (n <= 0 || n > 10) {
        cout << "Ошибка: неверный размер массива!";
        system("pause");
        return 1;
    }

    cout << "Массив A:" << endl;
    for (int i = 0; i < n; i++) {
        cout << "A[" << i << "] = ";
        cin >> a[i];
    }

    cout << "Введите количество элементов массива m = ";
    cin >> m;
    if (m <= 0 || m > 10) {
        cout << "Ошибка: неверный размер массива!";
        system("pause");
        return 1;
    }

    cout << "Массив B:" << endl;
    for (int i = 0; i < m; i++) {
        cout << "B[" << i << "] = ";
        cin >> b[i];
    }

    x = MaxI(n, a);
    z = MaxI(m, b);

    cout << "Максимум массива A = " << x << endl;
    cout << "Максимум массива B = " << z << endl;

    if (x > z) {
        max = x;
    } else {
        max = z;
    }

    cout << "Общий результат max = " << max << endl;

    system("pause");
    return 0;
}

