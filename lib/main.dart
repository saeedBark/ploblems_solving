main() {
  final solution = Solution();
  final response = solution.titleToNumber('CB');
  print(response);
}

class Solution {
  int titleToNumber(String columnTitle) {
    int result = 0;

    for (int i = 0; i < columnTitle.length; i++) {
      int remaind = columnTitle.codeUnits[i] - 64;

      result = result * 26 + remaind;
    }
    return result;
  }
}
