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
