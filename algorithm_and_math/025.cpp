#include <bits/stdc++.h>
using namespace std;

int main() {
  long long N;
  cin >> N;
  int a[N+10];
  int b[N+10];

  double result = 0.0;

  for (int i=1; i<=N; i++) cin >> a[i] ;
  for (int i=1; i<=N; i++) cin >> b[i];

  for (int i=1; i<=N; i++) {
    double eval = (1.0/3.0) * a[i] + (2.0/3.0) * b[i];
    result += eval;
  }

  printf("%.12lf\n", result);
}

#include <iostream>
using namespace std;

int N;
double A[109], B[109];
double Answer = 0.0;

int main() {
	// 入力
	cin >> N;
	for (int i = 1; i <= N; i++) cin >> A[i];
	for (int i = 1; i <= N; i++) cin >> B[i];
	
	// 期待値を求める
	for (int i = 1; i <= N; i++) {
		double eval = A[i] * (1.0 / 3.0) + B[i] * (2.0 / 3.0);
		Answer += eval;
	}
	
	// 出力
	printf("%.12lf\n", Answer);
	return 0;
}