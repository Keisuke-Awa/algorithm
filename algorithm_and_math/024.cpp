#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  int ps[N];
  int qs[N];

  double result = 0.0;

  for (int i=0; i<N; i++) cin >> ps[i] >> qs[i];

  for (int i=0; i<N; i++) result += 1.0 * qs[i] / ps[i];

  printf("%.12lf\n", result);
}