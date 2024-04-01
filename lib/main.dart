
main() {
  Solution solution = Solution();
 
 final result =solution.twoSum([2,5,4,8],7);
 print(result);
}
class Solution {
  List<int> twoSum(List<int> nums, int target) {

    Map<int ,int> mapNumbers =  {};

      for(int i = 0 ;i <= nums.length - 1 ; i++){
          int value = target - nums[i];
          if(mapNumbers.containsKey(value)){
            
          return    [i , mapNumbers[value]!];
          }
          mapNumbers[nums[i]] = i;
      }
      return [];
      
  }
}

