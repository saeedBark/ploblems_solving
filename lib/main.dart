main() {
  final solution = Solution();
  final response = solution.isAnagram('saeed', 'daese');
  print(response);
}

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    final sortS = s.split('');
    sortS.sort();
    final resultS = sortS.join('');

    final sortT = t.split('');
    sortT.sort();
    final resultT = sortT.join('');

    if (resultS != resultT) return false;

    return true;
  }
}
