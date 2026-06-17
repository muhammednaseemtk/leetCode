/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? partition(ListNode? head, int x) {
ListNode before = ListNode(0);
  ListNode after = ListNode(0);
  ListNode beforeCurr = before;
  ListNode afterCurr = after;
  
  while (head != null) {
    if (head.val < x) {
      beforeCurr.next = head;
      beforeCurr = head;
    } else {
      afterCurr.next = head;
      afterCurr = head;
    }
    head = head.next;
  }
  
  afterCurr.next = null;
  beforeCurr.next = after.next;
  
  return before.next;
  }
}