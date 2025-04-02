Okay, here is a beginner-level Dart problem focusing on functions, parameters, and return values, specifically for calculating the average of a list of doubles.

---

**Problem Description**

**Task:** Write a Dart function named `calculateAverage` that calculates the average of a list of numbers.

**Requirements:**

1.  The function should accept one parameter: a `List` containing `double` values (e.g., `[10.5, 20.0, 5.5]`).
2.  Inside the function, calculate the sum of all the numbers in the input list.
3.  Calculate the average by dividing the sum by the total number of elements in the list.
4.  The function should **return** the calculated average as a `double`.
5.  **Edge Case:** If the input list is empty, the function should return `0.0`.

**Example Usage:**

*   `calculateAverage([10.0, 20.0, 30.0])` should return `20.0`.
*   `calculateAverage([2.5, 7.5])` should return `5.0`.
*   `calculateAverage([])` should return `0.0`.

---

**Solution Code**

```dart
import 'dart:core'; // Usually imported automatically

// Function definition for calculateAverage
double calculateAverage(List<double> numbers) {
  // Handle the edge case: an empty list
  if (numbers.isEmpty) {
    return 0.0; // Return 0.0 if the list is empty as per requirements
  }

  // Calculate the sum of the numbers in the list
  double sum = 0.0;
  for (double number in numbers) {
    sum += number; // Add each number to the sum
  }

  // Calculate the average
  double average = sum / numbers.length;

  // Return the calculated average
  return average;
}

// Main function to test the calculateAverage function
void main() {
  // Test case 1: A standard list
  List<double> list1 = [10.0, 20.0, 30.0, 40.0, 50.0];
  double average1 = calculateAverage(list1);
  print('List 1: $list1');
  print('Average 1: $average1'); // Output: Average 1: 30.0
  print('---');

  // Test case 2: A list with decimal values
  List<double> list2 = [2.5, 3.5, 1.0];
  double average2 = calculateAverage(list2);
  print('List 2: $list2');
  print('Average 2: $average2'); // Output: Average 2: 2.333...
  print('---');

  // Test case 3: An empty list
  List<double> list3 = [];
  double average3 = calculateAverage(list3);
  print('List 3: $list3');
  print('Average 3 (Empty List): $average3'); // Output: Average 3 (Empty List): 0.0
  print('---');

  // Test case 4: A list with a single element
  List<double> list4 = [99.9];
  double average4 = calculateAverage(list4);
  print('List 4: $list4');
  print('Average 4: $average4'); // Output: Average 4: 99.9
}
```