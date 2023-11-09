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
  bool isSameTree(TreeNode? root1, TreeNode? root2) {
    List<int> result = [];

    if (root1 == null && root2 == null) return true;
    for (int i = 0; i < root1.left;) result.addAll(isSameTree(root1!.left));
    result.add(root1.val);
    result.addAll(isSameTree(root.right));

    return result;
  }
}
