main() {
  final solution = Solution();
  final response = solution.isPalindrome("A man, a plan, a canal: Panama");
  print(response);
}

class Solution {
  bool isPalindrome(String s) {
    if (s.isEmpty) return true;

    final response = removeNonAlphabetic(s);

    final sToLowerCase = response.toLowerCase();

    final result = response.split('').reversed.toList().join();

    final mToLowerCase = result.toLowerCase();

    if (sToLowerCase != mToLowerCase) return false;

    return true;
  }

  String removeNonAlphabetic(String s) {
    RegExp regExp = RegExp(r'[^a-zA-Z0-9]');

    return s.replaceAll(regExp, '');
  }
}
