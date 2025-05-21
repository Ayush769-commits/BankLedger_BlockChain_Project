#include <iostream>
using namespace std;
int main(){
    int arr[5];
    cout<< "Enter 5 numbers: ";
    for (int i=0; i<5;i++){
        cin>> arr[i];
    }
    cout<< "sum of the first three numbers is:"<<arr[0]+arr[1]+arr[2]<<endl;
    cout<< "sum of the last three numbers is:"<<arr[2]+arr[3]+arr[4]<<endl;
    return 0;
}