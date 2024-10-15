main() {
  Solution solution = Solution();

  final result = solution.addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))),
      ListNode(5, ListNode(6, ListNode(4))));

  print(result);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

// thes solution have a problem when the list node have more than 10 node
// the solution is not efficient
// the solution is not scalable
// the solution is not maintainable
// the solution is not readable
// the solution use more memory than the second solution
// the solution use more time than the second solution
// the use to convert the list node to int and add them and convert the result to list node is not efficient

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    final newL1 = [];
    final newL2 = [];
    ListNode? finalListNode;
    while (l1 != null) {
      newL1.insert(0, l1.val);
      l1 = l1.next;
    }
    while (l2 != null) {
      newL2.insert(0, l2.val);
      l2 = l2.next;
    }
    final sum = (int.parse(newL1.join('')) + int.parse(newL2.join('')));

    final reversedSumList = sum.toString().split('').reversed;
    final nodes =
        reversedSumList.map((element) => ListNode(int.parse(element))).toList();

    for (int i = 0; i < nodes.length - 1; i++) {
      nodes[i].next = nodes[i + 1];
    }

    finalListNode = nodes[0];

    return finalListNode;
  }
}

// the second solution is more efficient and scalable and maintainable and readable and use less memory and time

class Solution2 {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0);
    ListNode current = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int x = l1?.val ?? 0;
      int y = l2?.val ?? 0;
      int sum = carry + x + y;
      carry = sum ~/ 10;
      current.next = ListNode(sum % 10);
      current = current.next!;
      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummy.next;
  }
}

// comment to psuh to github
