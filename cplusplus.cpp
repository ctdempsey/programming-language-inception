#include <iostream>
#include <cstdlib>

using namespace std;

int main() {
    cout << "Hello from C++!\n";
    int status = system("mono CSharp.exe");
    cout << "Goodbye from C++!\n";
    return 0;
}
