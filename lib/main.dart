main() {
  // final solution = Solution();
  // final removeRep = solution.removeElement([1, 5, 1, 2], 5);
  // print(removeRep);
  final calculate = Calculate();
  final result = calculate.caluclate(100, 0.05, 30);

  print(result);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int t = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[t] = nums[i];
        t++;
      }
    }
    return t;
  }
}

class Solution1 {
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
    for (int number = 0; number < nums.length; number++) {
      if (nums[number] != val) {
        nums.remove(number);
      }
    }

    final k = nums.length;

    return k;
  }
}

class Calculate {
  double caluclate(double usdt, double percentage, int day) {
    double result = 0;
    double response = 0;
    double usdtx = usdt;
    for (int i = 0; i < day; i++) {
      response = usdtx * percentage;

      result = result + response;
    }
    return result;
  }
}
