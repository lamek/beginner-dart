Okay, here is a beginner Dart problem focusing on `for` loops and `if` statements, along with its solution.

---

**Problem Description**

**Title:** Sum of Even Numbers in a List

**Objective:** Calculate the sum of all the even numbers within a given list of integers.

**Details:**
You are given a `List<int>` containing various integer numbers (positive, negative, or zero). Your task is to iterate through this list. For each number in the list, you need to check if it is an even number. If it is even, you should add it to a running total. After checking all the numbers in the list, print the final total sum of only the even numbers found.

**Requirements:**
1.  Define a `List<int>` with some sample numbers.
2.  Initialize a variable (e.g., `sumOfEvens`) to `0` to store the sum.
3.  Use a `for` loop (either a standard `for` or a `for-in` loop) to iterate through each element of the list.
4.  Inside the loop, use an `if` statement to check if the current number is even. (Hint: The modulo operator `%` can be helpful here. A number `x` is even if `x % 2 == 0`).
5.  If the number is even, add it to your `sumOfEvens` variable.
6.  After the loop finishes, print the final value of `sumOfEvens` to the console.

**Example:**
If the list is `[1, 2, 3, 4, 5, 6, 8, 11, 14]`, the expected output should be `34` (because 2 + 4 + 6 + 8 + 14 = 34).

---

**Solution Code**

```dart
void main() {
  // 1. Define a List<int> with sample numbers.
  List<int> numbers = [2, 5, 8, 10, 13, 16, 21, 24];

  // 2. Initialize a variable to store the sum of even numbers.
  int sumOfEvens = 0;

  // Optional: Print the original list for clarity
  print("Original list of numbers: $numbers");

  // 3. Use a for-in loop to iterate through each element.
  for (int number in numbers) {
    // 4. Inside the loop, use an if statement to check if the number is even.
    // A number is even if it is perfectly divisible by 2 (remainder is 0).
    if (number % 2 == 0) {
      // 5. If the number is even, add it to the sumOfEvens variable.
      sumOfEvens = sumOfEvens + number;
      // Alternatively, use the shorthand: sumOfEvens += number;
    }
  }

  // 6. After the loop, print the final sum.
  print("The sum of even numbers in the list is: $sumOfEvens");
}
```

**Explanation:**

1.  `List<int> numbers = [...]`: We create a list named `numbers` containing integer values.
2.  `int sumOfEvens = 0;`: We declare an integer variable `sumOfEvens` and initialize it to 0. This variable will accumulate the sum of even numbers found.
3.  `for (int number in numbers)`: This is a `for-in` loop that iterates over each element in the `numbers` list. In each iteration, the current element is assigned to the `number` variable.
4.  `if (number % 2 == 0)`: Inside the loop, this `if` statement checks the condition for evenness. The modulo operator `%` gives the remainder of a division. If `number` divided by 2 has a remainder of 0, it means the number is even.
5.  `sumOfEvens = sumOfEvens + number;`: If the condition in the `if` statement is true (the number is even), this line adds the current `number` to the `sumOfEvens`.
6.  `print(...)`: After the loop has processed all the numbers in the list, this line prints the final calculated `sumOfEvens` to the console.