import 'dart:math';

main() {
  final solution = Solution();
  final climb = solution.climbStairs(0);
  print(climb);
}

class Solution {
  int climbStairs(int n) {
    if (n <= 0) return 0;

    if (n == 2) return 2;

    final steps = (n - 1) + (n - 2);

    return steps;
  }
}
