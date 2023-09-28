main() {
  final solution = Solution();
  final removeRep = solution.removeDuplicates([1, 8, 1]);
  print(removeRep);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> expectedNums = [];
    for (var i in nums) {
      if (!expectedNums.contains(i)) {
        expectedNums.add(i);
      }
    }
    nums.clear();
    nums.addAll(expectedNums);
    return nums.length;
  }
}
