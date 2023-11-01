import 'dart:math';

main() {
  final solution = Solution();

  final result = solution.lastWord("   fly me   to   the moon  ");
  print(result);
}

class Solution {
  int lastWord(String s) {
    if (s.isEmpty) return 0;

    final response = s.split(" ");
    if (response.last.isEmpty) {
      response.removeWhere((element) => element == "");
      final lengthlastWord = response.last.length;

      return lengthlastWord;
    }

    return response.last.length;
  }
}
