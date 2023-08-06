#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  int array[N];
  long long count = 0;

  for (int i=0; i<=N; i++) {
    cin >> array[i];
  }

  for (int i=0; i<N; i++) {
    for (int j=0; j<N; j++) {
      if (j != i && array[j] == 100000 - array[i]) count++;
    }
  }

  cout << count / 2<< endl;
}