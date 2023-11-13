main() {
  final solution = Solution();
  final response = solution.convertToTitle(150);
  print(response);
}

class Solution {
  String convertToTitle(int columnNumber) {
    String result = '';

    while (columnNumber > 0) {
      int remainder = (columnNumber - 1) % 26;
      result = String.fromCharCode('A'.codeUnitAt(0) + remainder) + result;
      columnNumber = (columnNumber - 1) ~/ 26;
    }

    return result;
  }
}
