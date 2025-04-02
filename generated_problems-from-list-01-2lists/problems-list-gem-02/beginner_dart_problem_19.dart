Okay, here is the Dart problem description and the corresponding solution code.

---

**Problem Description**

**Topic:** Dart Functions (Parameters, Return Values)

**Task:** List Average Function

Write a Dart function named `calculateAverage` that fulfills the following requirements:

1.  **Parameter:** It should accept one parameter: a `List<int>` named `numbers`.
2.  **Functionality:** It should calculate the sum of all the integers in the input list and then compute their average.
3.  **Return Value:** It should return the calculated average as a `double`.
4.  **Edge Case:** If the input list `numbers` is empty, the function should return `0.0`.

After defining the function, write a `main` function that:
1.  Creates a sample `List<int>` (e.g., `[10, 20, 30, 40, 50]`).
2.  Calls the `calculateAverage` function with this sample list.
3.  Prints the returned average value to the console.
4.  (Optional but recommended) Test the function with an empty list and print the result to verify the edge case handling.

---

**Solution Code**

```dart
import 'dart:core'; // Usually implicitly imported, but good practice for clarity

// Function definition: calculateAverage
// Takes a List<int> as input and returns the average as a double.
double calculateAverage(List<int> numbers) {
  // Handle the edge case: an empty list.
  if (numbers.isEmpty) {
    return 0.0; // Return 0.0 if the list has no elements.
  }

  // Calculate the sum of the numbers in the list.
  int sum = 0;
  for (int number in numbers) {
    sum += number; // Add each number to the sum.
  }

  // Calculate the average.
  // Dart's division operator '/' produces a double result,
  // even when dividing two integers, which is exactly what we need.
  double average = sum / numbers.length;

  // Return the calculated average.
  return average;
}

// Main function to demonstrate the calculateAverage function.
void main() {
  // 1. Create a sample list of integers.
  List<int> myNumbers = [10, 20, 30, 40, 50];

  // 2. Call the calculateAverage function with the sample list.
  double result = calculateAverage(myNumbers);

  // 3. Print the result.
  print("List: $myNumbers");
  print("Average: $result"); // Expected output: Average: 30.0

  print("-" * 20); // Separator

  // 4. Test with an empty list.
  List<int> emptyList = [];
  double emptyResult = calculateAverage(emptyList);

  print("List: $emptyList");
  print("Average: $emptyResult"); // Expected output: Average: 0.0
}
```

---