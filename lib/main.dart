main() {
  final solution = Solution();
  final removeRep = solution.removeElement([1, 5, 1, 2], 5);
  print(removeRep);
}

// class Solution2 {
//   int removeElement(List<int> nums, int val) {
//     for (int i = 0; i < nums.length; i++) {
//       nums.remove(val);
//     }
//     nums.remove(val);
//     return nums.length;
//   }
// }

// another  response
class Solution {
  int removeElement(List<int> nums, int val) {
    for (int number = 0; number < nums.length; number++) {
      if (nums[number] != val) {
        nums.remove(number);
      }
    }

    final k = nums.length;

    return k;
  }
}
