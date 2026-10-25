#include <iostream>
#include <tchar.h>
 using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{   system("chcp 1251");
int dayNumber;
	cout << "Введите порядковый номер дня недели (1-7): ";
    cin >> dayNumber;

	switch (dayNumber) {
		case 1:cout << "Понедельник" << endl;break;
		case 2:cout << "Вторник" << endl; break;
		case 3:cout << "Среда" << endl; break;
		case 4:cout << "Четверг" << endl;break;
		case 5:cout << "Пятница" << endl; break;
		case 6:cout << "Суббота" << endl; break;
		case 7:cout << "Воскресенье" << endl;break;
        default:
            cout << "Ошибка: дня недели с таким номером не существует!" << endl;
            break;
    }
	 system ("pause");
	return 0;
}
