//---------------------------
//       HEADER FILES
//---------------------------








#include <sstream>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cstdio>
#include <cmath>
#include <cstring>
#include <cctype>
#include <climits>
#include <cfloat>
#include <string>
#include <algorithm>
#include <functional>
#include <vector>
#include <list>
#include <array>
#include <set>
#include <map>
#include <stack>
#include <queue>
#include <deque>
#include <bitset>
#include <unordered_set>
#include <unordered_map>
#include <utility>
#include <iterator>
#include <ctime>
#include <tuple>
#include <numeric>
#include <chrono>
#include<ctime>
#include "./class.cpp"

using namespace std;








//---------------------------
//      MAIN PROGRAM
//---------------------------








int main()
{
    //CLEAR TERMINAL
    system("clear");

    //INITIALIZE DATABASES
    Create_Parameters();
    Create_Cars_Present();
    Create_Customers_Present();
    Create_Employees_Present();
    Create_Managers_Present();

    //INSERT LOGO
    ifstream file("rental_logo.txt");
    string line;
    while(getline(file, line))
    {
        cout<<line<<endl;
    }

    //INSERT WELCOME MESSAGE
    cout<<endl;
    cout<<"---------------------------------"<<endl;
    cout<<endl;
    cout<<">> Welcome to Rent Now!"<<endl;

    //UPDATE CURRENT DATE
    Update_Date();

    //MAIN PROGRAM
    User_Type();
    
    //UPDATE DATABASES
    Update_Car_Database();
    Update_Customer_Database();
    Update_Employee_Database();
    Update_Manager_Database();
    Update_Parameters();

}