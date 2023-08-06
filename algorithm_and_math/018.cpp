#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  int array[N];
  long long hundred = 0;
  long long two_hundreds = 0;
  long long three_hundreds = 0;
  long long four_hundreds = 0;


  for (int i=0; i<=N; i++) {
    cin >> array[i];
  }

  for (int& element : array) {
    switch (element) {
		  case 100:
        hundred++;
        continue;
		  case 200:
        two_hundreds++;
        continue;
		  case 300:
        three_hundreds++;
        continue;
		  case 400:
        four_hundreds++;
        continue;
    }
  }

  cout << (hundred * four_hundreds) + (two_hundreds * three_hundreds) << endl;
}