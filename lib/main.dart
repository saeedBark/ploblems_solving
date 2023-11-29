main() {
  final solution = Solution();
  final response = solution.isIsomorphic('saeed', 'ahrrd');
  print(response);
}

class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;
    List<int> sA = [];
    List<int> tA = [];
    for (int i = 0; i < s.length; i++) {
      sA.add(s.indexOf(s[i]));
      tA.add(t.indexOf(t[i]));
      if (sA[i] != tA[i]) return false;
    }
    return true;
  }
}
