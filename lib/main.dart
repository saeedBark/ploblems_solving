import 'dart:math';

main() {
  final sultion = Solution();
  final result = sultion.searchInsert([1, 2, 4], 3);
  print(result);
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        return i;
      }
    }
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > target) {
        return i;
      }
    }
    return nums.length;
  }
}
