main() {
  final solution = Solution();
  final result = solution.strStr('saed', 'saeed');
}

class Solution {
  int strStr(String haystack, String needle) {
    if (haystack.contains(needle)) {
      final result = haystack.indexOf(needle);

      return result;
    }

    return -1;
  }
}
