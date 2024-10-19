main() {
  final solution = Solution();

  solution.reverse(123);
}

class Solution {
  int reverse(int x) {
    int reversed = 0;
    while (x != 0) {
      int digit = x % 10;
      x = x ~/ 10;
      reversed = reversed * 10 + digit;
    }
    return reversed;
  }
}
//the second solution


