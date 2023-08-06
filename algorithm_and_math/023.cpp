#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  double red[N];
  double blue[N];

  for (int i=0; i<=N-1; i++) cin >> red[i];
  for (int i=0; i<=N-1; i++) cin >> blue[i];

  double red_expect = 0.0;
  double blue_expect = 0.0;

  for (double& element : red) red_expect += 1.0 * element / N;
  for (double& element : blue) blue_expect += 1.0 * element / N;

  // cout << red_expect + blue_expect << endl;
  printf("%.12lf\n", red_expect + blue_expect);
}