#include <iostream>
#include <tchar.h>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{system("chcp 1251");
 int a,b, sum,i;
cout <<"¬ведите любое натуральное число a: ";
cin>> a;
cout<<"¬ведите любое натуральное число b ";
cin>>b;
sum=0;
i=0;
while(i<b) {
	sum+=a;
	i++;
}
cout<<"–езультат умножени€: "<<sum<<endl;
system ("pause");
return 0;
}
