Okay, here is a beginner Dart problem focused on arithmetic operators, specifically for calculating BMI, along with its solution.

---

**Problem Description: Simple BMI Calculator**

**Goal:** Write a Dart program that calculates a person's Body Mass Index (BMI).

**Requirements:**

1.  **Get Input:** Prompt the user to enter their weight in kilograms (kg).
2.  **Get Input:** Prompt the user to enter their height in meters (m).
3.  **Calculation:** Calculate the BMI using the standard formula:
    `BMI = weight (kg) / (height (m) * height (m))`
    *   You will need to use arithmetic operators (`/` for division, `*` for multiplication).
4.  **Output:** Print the calculated BMI value to the console.

**Example Interaction:**

```
Enter your weight in kilograms (e.g., 70.5):
70
Enter your height in meters (e.g., 1.75):
1.75
--------------------
Calculating BMI...
Your BMI is: 22.857142857142858
```

**Hint:** You'll need to read input from the console (using `dart:io`) and convert the input strings to numbers (e.g., `double`) before performing calculations.

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the Input/Output library

void main() {
  // 1. Get weight input
  print('Enter your weight in kilograms (e.g., 70.5):');
  // Read the line entered by the user
  String? weightInput = stdin.readLineSync();
  // Convert the input string to a double, handling potential null with '!'
  // and assuming the user enters a valid number.
  double weightKg = double.parse(weightInput!);

  // 2. Get height input
  print('Enter your height in meters (e.g., 1.75):');
  // Read the line entered by the user
  String? heightInput = stdin.readLineSync();
  // Convert the input string to a double
  double heightM = double.parse(heightInput!);

  // 3. Calculate BMI using arithmetic operators
  // Formula: BMI = weight / (height * height)
  // The '*' operator performs multiplication.
  // The '/' operator performs division.
  // Parentheses ensure height is squared before dividing the weight.
  double bmi = weightKg / (heightM * heightM);

  // 4. Output the result
  print('--------------------');
  print('Calculating BMI...');
  // Print the calculated BMI using string interpolation
  print('Your BMI is: $bmi');

  // Optional: You could also print a rounded version
  // print('Your rounded BMI is: ${bmi.toStringAsFixed(2)}');
}
```

---