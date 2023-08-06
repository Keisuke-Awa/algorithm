#include <bits/stdc++.h>
using namespace std;

int main() {
  long long n, r;
  cin >> n >> r;
  long long n_factorial = 1;
  long long r_factorial = 1;
  long long nr_factorial = 1;

  for (int i=1; i<=n; i++) {
    n_factorial *= i;
  }

  for (int i=1; i<=r; i++) {
    r_factorial *= i;
  }

  for (int i=1; i<=n-r; i++) {
    nr_factorial *= i;
  }

  cout << n_factorial / (r_factorial * nr_factorial) << endl;
}