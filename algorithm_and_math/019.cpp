#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  int array[N];
  long long red = 0;
  long long yellow = 0;
  long long blue = 0;


  for (int i=0; i<=N; i++) {
    cin >> array[i];
  }

  for (int& element : array) {
    switch (element) { 
		  case 1:
        red++;
        continue;
		  case 2:
        yellow++;
        continue;
		  case 3:
        blue++;
        continue;
    }
  }

  cout << ((red * (red - 1)) + (yellow * (yellow - 1)) + (blue * (blue - 1))) / 2 << endl;
}