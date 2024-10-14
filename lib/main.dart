main() {
  SolutionSort solution = SolutionSort();

  solution.twoSum([2, 5, 4, 8], 6);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> myMap = {};

    for (int i = 0; i < nums.length - 1; i++) {
      int value = target - nums[i];
      if (myMap.containsKey(value)) {
        return [i, myMap[value]!];
      }
      myMap[value] = i;
    }

    return [];
  }
}

// this class is for o(n log n) solution mean sorting the array first
// then use two pointer to find the solution
// the benfit of this solution is that it is more efficient than the first solution
// but the benfit of the first solution is that it is more efficient than the second solution
class SolutionSort {
  List<int> twoSum(List<int> nums, int target) {
    List<List<int>> indexedNums =
        List.generate(nums.length, (index) => [nums[index], index]);
    indexedNums.sort((a, b) => a[0].compareTo(b[0]));

    int left = 0;
    int right = nums.length - 1;

    while (left < right) {
      int currentSum = indexedNums[left][0] + indexedNums[right][0];
      if (currentSum == target) {
        return [indexedNums[left][1], indexedNums[right][1]];
      } else if (currentSum < target) {
        left++;
      } else {
        right--;
      }
    }
    return [];
  }
}

// this class is for o(n^2) solution mean using two for loop to find the solution
// this solution is not efficient because it is not efficient like another solution above
// but it is a good solution to understand the problem and the solution
class SolutionBruteForce {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    // If no solution is found
    return [];
  }
}
// write comment for push this code to github 
// this code is for two sum problem
// the problem is to find two number in the array that their sum is equal to the target
// the solution is to use a hashmap to store the value and the index of the number o(n)
// then use another for loop to find the solution o(n^2)
// the benfit of this solution is that it is more efficient than the brute force solution
// but the benfit of the brute force solution is that it is more efficient than the brute force solution

