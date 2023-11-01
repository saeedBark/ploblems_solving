import 'dart:math';

main() {
  final solution = Solution();

  final result = solution.plusOne([9, 9]);
  print(result);
}

class Solution {
  List<int> plusOne(List<int> digits) {
    if (digits.last < 9) {
      return lessThanNine(digits);
    }
    return lastEquelNine(digits);
  }
}

List<int> lessThanNine(List<int> digits) {
  final response = digits.join('');

  int result = int.parse(response);

  result++;

  List<String> newDigitsString = result.toString().split('').toList();

  List<int> newDigits = newDigitsString.map((x) => int.parse(x)).toList();

  return newDigits;
}

List<int> lastEquelNine(List<int> digits) {
  final response = digits.join('');

  int result = int.parse(response);

  List<String> newDigitsString = result.toString().split('').toList();

  List<int> newDigits = newDigitsString.map((x) => int.parse(x)).toList();

  newDigits.removeLast();
  newDigits.addAll([1, 0]);

  return newDigits;
}
