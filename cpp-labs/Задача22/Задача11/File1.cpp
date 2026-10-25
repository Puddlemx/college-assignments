#include <iostream>
#include <tchar.h>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{
system("chcp 1251");
int n;
cout<<"¬ведите n";
cin>>n;
cout<<endl;
if (n%2==0) {
 cout<<"n="<<"чЄтное число"<<endl;
}
else
{
cout <<"n="<<"нечЄтное чиисло"<<endl;
}
system ("pause");
return 0;
}
