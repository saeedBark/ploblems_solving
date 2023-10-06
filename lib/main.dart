main() {

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
