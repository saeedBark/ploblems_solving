import 'dart:math';

main() {
  final solution = Solution();

  final result = solution.plusOne([1, 2, 3]);
  print(result);
}

class Solution {
  List<int> plusOne(List<int> digits) {
    int result = 0;

    for (final digit in digits) {
      result = result + digit;
    }

    result++;

    List<String> newDigitsString = result.toString().split('').toList();

    List<int> newDigits = newDigitsString.map((x) => int.parse(x)).toList();

    return newDigits;
  }
}
