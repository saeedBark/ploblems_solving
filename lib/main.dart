main() {
  final valid = Solution();
  ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode list2 = ListNode(1, ListNode(2, ListNode(3)));
  final s = valid.mergeTwoLists(list1, list2);

  print(s!.next!.val);
}

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    List<int> list = [];

    while (list1 != null) {
      list.add(list1.val);
      list1 = list1.next;
    }
    while (list2 != null) {
      list.add(list2.val);
      list2 = list2.next;
    }

    if (list.isEmpty) return null;

    list.sort();

    ListNode tail = ListNode(list[0]);
    ListNode prev = tail;

    for (int i = 1; i < list.length; i++) {
      ListNode node = ListNode(list[i]);
      prev.next = node;
      prev = node;
    }
    return tail;
  }
}
