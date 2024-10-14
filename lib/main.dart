import 'dart:math';

main() {
  final solution = SolutionLongestSubstring();

  solution.lengthOfLongestSubstring('pwwkew');
}

class SolutionLongestSubstring {
  /// Finds the length of the longest substring without repeating characters.
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) return 0;

    Set<String> charSet = {};
    int left = 0;
    int maxLength = 0;

    for (int right = 0; right < s.length; right++) {
      while (charSet.contains(s[right])) {
        charSet.remove(s[left]);
        left++;
      }
      charSet.add(s[right]);
      maxLength = max(maxLength, right - left + 1);
    }

    return maxLength;
  }
}

class SolutionLongestSubstringNoMax {
  /// Finds the length of the longest substring without repeating characters.
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) return 0;

    Set<String> charSet = {};
    int left = 0;
    int maxLength = 0;

    for (int right = 0; right < s.length; right++) {
      String currentChar = s[right];

      while (charSet.contains(currentChar)) {
        charSet.remove(s[left]);
        left++;
      }

      charSet.add(currentChar);

      // Update maxLength without using the max function
      int currentLength = right - left + 1;
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    }

    return maxLength;
  }
}
// these solution for longest substring without repeating characters
// these are the same solution but the second one is more readable and easier to understand