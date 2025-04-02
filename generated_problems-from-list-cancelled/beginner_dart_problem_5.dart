Okay, here is a beginner Dart problem focused on variables, data types, and list manipulation, specifically calculating the sum and average of scores.

---

**Problem Description: Average Score Calculator**

**Objective:**
Write a Dart program that calculates the sum and average of a predefined list of student scores.

**Requirements:**

1.  **Define Data:** Create a `List` variable named `scores`. Initialize it with a few numerical scores (you can use `int` or `double`, but using `double` might be easier for the average calculation). For example: `[85.0, 92.5, 78.0, 95.5, 88.0]`.
2.  **Calculate Sum:** Iterate through the `scores` list and calculate the total sum of all the scores. Store this sum in a variable (e.g., `totalSum`).
3.  **Calculate Average:** Calculate the average score by dividing the `totalSum` by the number of scores in the list. Store this average in a variable (e.g., `averageScore`). Make sure the result is a `double` to handle potential decimal values accurately. *Hint: Be mindful of division, especially if your sum or count is an integer.*
4.  **Print Results:** Print the original list of scores, the calculated `totalSum`, and the calculated `averageScore` to the console. Make the output clear by adding descriptive text (e.g., "Sum of scores: ...").

**Concepts to Practice:**
*   Variable declaration (`var`, `double`, `List`)
*   Data Types (`double`, `List<double>`)
*   List initialization
*   List properties (`.length`)
*   Iteration (e.g., `for-in` loop)
*   Basic arithmetic operators (`+`, `/`)
*   Printing output (`print()`)
*   String interpolation

---

**Solution Code:**

```dart
void main() {
  // 1. Define Data: Create a List of scores (using double for easier average calculation)
  List<double> scores = [85.0, 92.5, 78.0, 95.5, 88.0];

  // Initialize variables to store the sum and average
  double totalSum = 0.0;
  double averageScore = 0.0;

  // 2. Calculate Sum: Iterate through the list and add each score to totalSum
  // Using a for-in loop for simplicity
  for (double score in scores) {
    totalSum = totalSum + score; // or totalSum += score;
  }

  // 3. Calculate Average: Divide the sum by the number of scores
  // Check if the list is not empty to avoid division by zero
  if (scores.isNotEmpty) {
    averageScore = totalSum / scores.length;
  } else {
    print("The scores list is empty, cannot calculate average.");
    // Or handle the empty list case as needed (e.g., average = 0)
  }

  // 4. Print Results: Display the original list, sum, and average
  print("List of Scores: $scores");
  print("--------------------------");
  print("Sum of Scores: $totalSum");

  // Conditionally print the average only if it was calculated
  if (scores.isNotEmpty) {
    // Use toStringAsFixed() to format the average to 2 decimal places (optional)
    print("Average Score: ${averageScore.toStringAsFixed(2)}");
  }
}
```

---