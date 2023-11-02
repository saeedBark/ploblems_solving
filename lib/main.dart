import 'dart:math';

main() {
  final instance = Solution();
  final solution = instance.mySqrt(8);
  print(solution);
}

class Solution {
  int mySqrt(int x) {
    double result = sqrt(x);

    return result.toInt();
  }
}
