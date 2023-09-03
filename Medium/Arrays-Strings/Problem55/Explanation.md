# Explanation: Jump Game

## Problem Description
The "Jump Game" problem involves determining whether it is possible to reach the last index of an integer array nums. Each element in the array represents the maximum jump length that can be made from that position.

## Solution Approach
To solve this problem, we'll use a greedy approach. We start at the last index and work our way backwards, checking if we can reach the current index from any previous index. If we can reach the current index, we update our goal pointer to the current index, as it becomes our new potential goal.

By iteratively moving backward and updating the goal pointer, we check if we can eventually reach the beginning of the array (i.e., goalPointer reaches 0). If this condition is met, we return true, indicating that it is possible to reach the last index; otherwise, we return false.

## Example
Consider the example nums = [2,3,1,1,4].

- We start at the last index 4 and check if we can reach it from any previous index. Since the value at index 3 is 1, we can jump from index 3 to index 4. So, we update the goalPointer to 3.

- Next, we check if we can reach index 3 from any previous index. The value at index 2 is 1, so we can jump from index 2 to index 3. We update the goalPointer to 2.

- Now, we check if we can reach index 2 from any previous index. The value at index 1 is 3, so we can jump from index 1 to index 2. We update the goalPointer to 1.

- Finally, we check if we can reach index 1 from index 0. Since the value at index 0 is 2, we can jump from index 0 to index 1. We update the goalPointer to 0.

- The goalPointer has reached the beginning of the array (index 0), indicating that it is possible to reach the last index.

- Therefore, we return true.

## Time Complexity
The solution performs a single pass through the input array nums, so the time complexity is O(n), where n is the length of the input array.

## Space Complexity
The solution uses only a constant amount of extra space, so the space complexity is O(1).

## LeetCode Feedback

![87FE3885-9FA8-4316-80E0-F15D138BD303](https://github.com/guilhermemello07/LeetCode-Swift/assets/72673965/73e3e693-1460-4c36-bdc7-29c38d653443)
