main() {
  final solution = Solution();
  final removeRep = solution.removeElement([1, 5, 1], 5);
  print(removeRep);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    for (int i = 0; i < nums.length; i++) {
      nums.remove(val);
    }
    nums.remove(val);
    return nums.length;
  }
}

// another  response

class Solution2 {
  int removeElement(List<int> nums, int val) {
    List expectedNums = [];

    for (final number in nums) {
      if (number == val) {
        expectedNums.add(number);
      }
    }

    expectedNums.sort();

    final k = expectedNums.length;

    return k;
  }
}
