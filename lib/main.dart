import 'dart:math';

main() {}

//* Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? temp = head;

    while (temp?.next != null) {
      if (temp?.val == temp?.next?.val) {
        temp?.next = temp.next?.next;
      } else {
        temp = temp?.next;
      }
    }
    return head;
  }
}
