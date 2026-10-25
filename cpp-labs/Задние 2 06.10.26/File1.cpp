#include <iostream>
#include <cmath>

using namespace std;

int _tmain(int argc, _TCHAR* argv[]) {
 system("chcp 1251");
    long long n,d,e,o;
    cout << "Введите число: ";
    cin >> n;

    e = 0, o = 0;
    n = abs(n);

    while (n > 0) {
        d = n % 10;
        if (d > 0) (d % 2 == 0 ? e++ : o++);
        n /= 10;
    }

   cout << "Количество чётных цифр: " << e << endl;
    cout << "Количество нечётных цифр: " << o << endl;
    system("pause");
    return 0;
}
