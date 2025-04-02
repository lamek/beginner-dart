Okay, here is a beginner Dart problem focusing on Variables and Data Types, specifically using `List` and numeric types (`double`/`int`) to calculate an average.

---

**Problem Description**

**Title:** Average Score Calculator

**Objective:**
Write a Dart program that calculates the sum and average of a predefined list of scores.

**Requirements:**
1.  **Define a List:** Create a `List` variable to hold several numerical scores. You can use `int` or `double` for the scores, but `double` is recommended for potential decimal scores and for the average calculation.
2.  **Calculate the Sum:** Iterate through the list and calculate the total sum of all the scores. Store this sum in a variable.
3.  **Calculate the Average:** Calculate the average score by dividing the total sum by the number of scores in the list. Store this average in a variable. Remember that the average might be a decimal number, so use the `double` type.
4.  **Print Results:** Print the original list of scores, the calculated sum, and the calculated average score to the console. Make the output clear and readable (e.g., "Sum: ..." and "Average: ...").

**Concepts Practiced:**
*   Declaring variables (`List`, `double`, `int`).
*   Using the `List` data type to store multiple values.
*   Iterating over a `List` (e.g., using a `for-in` loop).
*   Performing arithmetic operations (+, /).
*   Using `print()` to display output.
*   Using `List.length` property.

---

**Solution Code**

```dart
void main() {
  // 1. Define a List of scores (using double)
  List<double> scores = [75.0, 92.5, 88.0, 65.5, 99.0, 81.5];

  // Initialize variables to store the sum and average
  double sum = 0.0;
  double average = 0.0;

  // 2. Calculate the sum of the scores
  // Iterate through each score in the list
  for (double score in scores) {
    sum = sum + score; // Add the current score to the sum
    // Alternatively: sum += score;
  }

  // 3. Calculate the average score
  // Check if the list is not empty to avoid division by zero
  if (scores.isNotEmpty) {
    // average = sum / number of scores
    average = sum / scores.length;
  } else {
    print("The scores list is empty. Cannot calculate average.");
  }

  // 4. Print Results
  print("List of Scores: $scores");
  print("Sum of scores: $sum");

  // Only print the average if it was possible to calculate it
  if (scores.isNotEmpty) {
    // Using toStringAsFixed(2) to format the average to 2 decimal places
    print("Average score: ${average.toStringAsFixed(2)}");
  }
}
```

---