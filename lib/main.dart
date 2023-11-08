main() {
  final solution = Solution();
  solution.inorderTraversal(
    TreeNode(
      2,
      null,
      TreeNode(5, TreeNode(6)),
    ),
  );
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];

    if (root != null) {
      result.addAll(inorderTraversal(root.left));
      result.add(root.val);
      result.addAll(inorderTraversal(root.right));
    }

    return result;
  }
}
