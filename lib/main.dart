import 'dart:math';

main() {
  final listNode = Solution();
  listNode.deleteDuplicates(ListNode(1, ListNode(2, ListNode(2, ListNode(1)))));
}

//* Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? listNode = head;

    while (listNode?.next != null) {
      if (listNode?.val == listNode?.next!.val) {
        listNode?.next = listNode.next;
      }
      listNode = listNode?.next;
    }
    return listNode;
  }
}
