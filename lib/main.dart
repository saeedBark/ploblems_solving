
main() {
  Solution solution = Solution();
 
 final result =solution.twoSum([2,5,4,8],6);
 print(result);
}
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for(int i = 0; i < nums.length; i++) {
      for(int j = i + 1; j < nums.length; j++) {
        if(nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    throw "No solution found";
  }
}


