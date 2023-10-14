import 'dart:math';

main() {
  halfNumber(50);
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String prefixWord = strs[0];
    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(prefixWord)) {
        prefixWord = prefixWord.substring(0, prefixWord.length - 1);
        if (prefixWord.isEmpty) return "";
      }
    }

    return prefixWord;
  }
}

String halfNumber(num number) {
  final response = number / 2;

  final result = 'Half of ' + 'is ' + response.toStringAsFixed(2);

  return result;
}

String quterNumber(num number) {
  final response = number / 4;

  final result = 'Half of ' + 'is ' + response.toStringAsFixed(2);

  return result;
}
