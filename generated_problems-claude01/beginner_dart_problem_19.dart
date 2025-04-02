Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description: Number Analyzer**

**Goal:** Write a Dart function that takes a list of numbers (`double`) as input and returns statistical information about that list.

**Requirements:**

1.  Create a function named `analyzeNumbers`.
2.  This function must accept one parameter: a `List<double>` representing the numbers to analyze.
3.  The function should calculate the following values from the input list:
    *   The **sum** of all numbers.
    *   The **average** (mean) of all numbers.
    *   The **minimum** (smallest) number in the list.
    *   The **maximum** (largest) number in the list.
4.  The function must **return** these four calculated values. A good way to return multiple related values is using a `Map<String, double>`. The map should have the following keys: `'sum'`, `'average'`, `'minimum'`, `'maximum'`.
5.  **Assumption:** For this beginner problem, you can assume the input list will **not** be empty.
6.  Include a `main` function to demonstrate how to call `analyzeNumbers` with a sample list and print the returned results in a user-friendly format.

**Example Input List:** `[10.0, 5.5, 8.0, 12.5, 4.0]`

**Expected Output Map (for the example input):**
```
{
  'sum': 40.0,
  'average': 8.0,
  'minimum': 4.0,
  'maximum': 12.5
}
```
*(Printed output in `main` should be formatted clearly)*

---

**Dart Solution Code:**

```dart
import 'dart:math'; // Needed for potential alternative min/max finding, but we'll do it manually

/// Analyzes a list of numbers to find the sum, average, minimum, and maximum.
///
/// [numbers]: A non-empty list of double values to analyze.
/// Returns a Map<String, double> containing the results with keys:
/// 'sum', 'average', 'minimum', 'maximum'.
Map<String, double> analyzeNumbers(List<double> numbers) {
  // Since we assume the list is not empty, we can safely access the first element.
  double sum = 0.0;
  double minimum = numbers[0];
  double maximum = numbers[0];

  // Iterate through the list to calculate sum and find min/max
  for (double number in numbers) {
    sum += number; // Add current number to sum

    if (number < minimum) {
      minimum = number; // Update minimum if current number is smaller
    }
    if (number > maximum) {
      maximum = number; // Update maximum if current number is larger
    }
  }

  // Calculate the average
  double average = sum / numbers.length;

  // Create the map to hold the results
  Map<String, double> results = {
    'sum': sum,
    'average': average,
    'minimum': minimum,
    'maximum': maximum,
  };

  // Return the map containing the analysis results
  return results;
}

// Main function to demonstrate the analyzeNumbers function
void main() {
  // Sample list of numbers
  List<double> data = [10.0, 5.5, 8.0, 12.5, 4.0, 20.0];
  // List<double> data = [15.0]; // Test with single element
  // List<double> data = [-5.0, 0.0, 5.0, -10.0]; // Test with negative numbers

  print("Analyzing list: $data");

  // Call the function to analyze the list
  Map<String, double> analysisResults = analyzeNumbers(data);

  // Print the results from the returned map
  print("\n--- Analysis Results ---");
  print("Sum: ${analysisResults['sum']}");
  print("Average: ${analysisResults['average']}");
  print("Minimum: ${analysisResults['minimum']}");
  print("Maximum: ${analysisResults['maximum']}");
  print("------------------------");

  // Note: In a real-world scenario, you should add checks for an empty list
  // to avoid errors (e.g., division by zero for average, accessing index 0).
  // For this beginner problem, we followed the assumption that the list is non-empty.
}
```