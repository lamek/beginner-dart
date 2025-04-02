Okay, here is a beginner Dart problem focusing on functions with parameters and return values, along with its solution.

---

## Dart Problem: List Sum Function

**Objective:** Practice defining and using functions in Dart, specifically focusing on parameters and return values.

**Task:**

1.  Define a function named `sumList`.
2.  This function should accept one parameter: a `List<int>` (a list of integers).
3.  Inside the function, calculate the sum of all the numbers in the input list.
4.  The function must *return* the calculated sum as an `int`.
5.  In the `main` function:
    *   Create a sample `List<int>` (e.g., `[1, 5, 2, 8, 3]`).
    *   Call the `sumList` function, passing your sample list as the argument.
    *   Store the returned value (the sum) in a variable.
    *   Print the sum to the console in a user-friendly format (e.g., "The sum of the list is: X").

---

## Dart Solution:

```dart
// Function definition:
// - Takes one parameter: a List of integers named 'numbers'.
// - Returns an integer (the calculated sum).
int sumList(List<int> numbers) {
  // Initialize a variable to store the sum. Start at 0.
  int sum = 0;

  // Iterate through each 'number' in the 'numbers' list.
  for (int number in numbers) {
    // Add the current number to the running sum.
    sum = sum + number; // You can also use the shorthand: sum += number;
  }

  // Return the final calculated sum.
  return sum;
}

// Main function - the entry point of the Dart program.
void main() {
  // 1. Create a sample list of integers.
  List<int> myNumbers = [1, 5, 2, 8, 3]; // Expected sum: 1 + 5 + 2 + 8 + 3 = 19

  // 2. Call the sumList function, passing the list as an argument.
  // Store the returned value (the sum) in the 'result' variable.
  int result = sumList(myNumbers);

  // 3. Print the result to the console.
  // Using string interpolation ($) to include the list and the result in the output string.
  print('The sum of the list $myNumbers is: $result');

  // Example with another list
  List<int> anotherList = [10, 20, 30]; // Expected sum: 10 + 20 + 30 = 60
  int anotherResult = sumList(anotherList);
  print('The sum of the list $anotherList is: $anotherResult');

  // Example with an empty list
  List<int> emptyList = []; // Expected sum: 0
  int emptyResult = sumList(emptyList);
  print('The sum of the list $emptyList is: $emptyResult');
}
```

**Explanation:**

1.  **`sumList(List<int> numbers)` Function:**
    *   It's declared to return an `int` and accept a `List<int>` named `numbers`.
    *   A variable `sum` is initialized to `0`.
    *   A `for-in` loop iterates through each element (`number`) in the `numbers` list.
    *   In each iteration, the current `number` is added to `sum`.
    *   Finally, the function returns the total `sum`.
2.  **`main()` Function:**
    *   This is where the program execution begins.
    *   It creates a sample list `myNumbers`.
    *   It calls `sumList(myNumbers)`, and the *returned value* from `sumList` is stored in the `result` variable.
    *   `print()` is used to display the original list and the calculated sum stored in `result`.
    *   Additional examples are included to show the function working with different lists, including an empty one.