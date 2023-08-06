#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
  // long long N;
  // cin >> N;
  vector<long long> primes;

  // for (long long i = 1; i * i <= N; i++) {
  //   if (N % i != 0) continue;
  //   cout << i << endl;
  //   if (i != N / i) {
  //     cout << N / i << endl;
  //   }
  // }
  // return 0;

  primes.push_back(5);
  primes.push_back(2);
  primes.push_back(3);
  primes.push_back(4);
  primes.push_back(1);
  for (int it: primes) cout << it << " "; // 1 2 3 4 5
}