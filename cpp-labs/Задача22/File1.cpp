#include <iostream>
#include <tchar.h>
 using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{system("chcp 1251");
   double x,y;
   std::cout << "Введите значение x: ";
	std::cin >> x;
    if (x == 0) {
        y = 3 * x + 5;
    }
	else if (x < 0) {
		y = x * x * x - 3 * x;
	}
	else {
		y = x * x + x;
    }

	std::cout << "При x = " << x << ", y = " << y << std::endl;
	system ("pause");
    return 0;
}
