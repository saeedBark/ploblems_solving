main() {
  final solution = Solution();
  final response = solution.isSymmetric(TreeNode(2, TreeNode(3), null));
  print(response);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    return true;
  }
}
