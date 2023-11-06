import 'dart:math';

main() {
  final solution = Solution();
  solution.merge([1, 2, 3, 3], 2, [3, 4, 5, 6, 7], 3);
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    final newNums1 = [];
    final newNums2 = [];
    for (int num = 0; num < nums1.length; num++) {
      if (num != m) {
        return newNums1.add(nums1[num]);
      }
    }

    for (int num = 0; num < nums2.length; num++) {
      if (num != n) {
        return newNums2.add(nums2[num]);
      }
    }
    return newNums1.add(newNums2);
  }
}
