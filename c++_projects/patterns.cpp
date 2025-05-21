#include <iostream>
using namespace std;
void pattern1(int n){
    for(int i=0; i<n; i++){
        for(int j=0; j<n ;j++){
            cout<<"$";

        }
        cout<<endl;
    }
}
void pattern2(int n){
    for (int i=0;i<=n;i++){
        for(int j=0;j<i;j++){
            cout<<"* "; 
        }
        cout<<endl;

    }
}
void pattern3(int n){
    for (int i=1;i<=n;i++){
        for(int j=1;j<=i;j++){
            cout<<j << " ";  
        
        }
        cout<<endl;
    }
}
void pattern4(int n){
    for (int i=1;i<=n;i++){
        for(int j=1;j<=i;j++){
            cout<<i << " ";  
        
        }
        cout<<endl;
    }
}
void pattern5(int n){
    for (int i=0;i<=n;i++){
        for(int j=1;j<n-i+1;j++){
            cout<<j<< " ";   
        }
        cout<<endl;

    }
}
int main(){

    int n;
    cout<< "Enter the number of lines: ";
    cin>>n;
    pattern5(n);
   
//    $ ke 4 baar likhne ka 4 alag alag line me pattern
    
    
    return 0;
}   