main() {
  final solution = Solution();
  final removeRep = solution.removeDuplicates([1, 8, 1]);
  print(removeRep);
}

class Solution {
  List<int> expectedNums = [];
  int k = 1;
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    } else if (nums.length == 1) {
      expectedNums.addAll(nums);
      return 1;
    }
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1]) {
        nums[k] = nums[i + 1];
        k++;
      }
    }
    expectedNums = nums;
    return k;
  }
}
