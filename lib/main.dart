main() {
  final valid = SolutionIsValid();
  valid.isValid('(}()');
}

class SolutionIsValid {
  bool isValid(String s) {
    final Map<String, String> bracketMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    final List<String> stack = [];

    for (var char in s.split('')) {
      if (bracketMap.containsValue(char)) {
        stack.add(char);
      } else if (bracketMap.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != bracketMap[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
