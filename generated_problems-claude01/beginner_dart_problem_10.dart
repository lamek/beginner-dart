Okay, here is a beginner Dart problem focusing on operators, along with its solution.

---

### Problem Description: Even/Odd & Positive/Negative Analyzer

**Goal:** Write a Dart program that analyzes a given integer to determine two things:
1.  If the number is **even** or **odd**.
2.  If the number is **positive**, **negative**, or **zero**.

**Requirements:**
*   Use the **modulo operator (`%`)** to check if the number is even or odd. (Hint: An even number has a remainder of 0 when divided by 2).
*   Use **comparison operators (`>`, `<`, `==`)** to check if the number is positive, negative, or zero.
*   The program should work for a predefined integer variable within the code (you don't need to read input from the user).
*   Print the results clearly to the console. For example, if the number is `-10`, the output should indicate that it's **even** and **negative**. If the number is `7`, it should indicate **odd** and **positive**. If the number is `0`, it should indicate **even** and **zero**.

---

### Dart Solution Code

```dart
void main() {
  // Define the integer variable to analyze.
  // Try changing this value to test different cases (e.g., 7, -10, 0, 15, -2).
  int numberToAnalyze = -10;

  print("--- Analyzing the number: $numberToAnalyze ---");

  // --- 1. Even/Odd Check using Modulo Operator (%) ---
  String evenOddResult; // To store "even" or "odd"

  // If the remainder when divided by 2 is 0, the number is even.
  if (numberToAnalyze % 2 == 0) {
    evenOddResult = "even";
  } else {
    // Otherwise, the number is odd.
    evenOddResult = "odd";
  }

  // Print the even/odd result
  print("Even/Odd Check: The number is $evenOddResult.");

  // --- 2. Positive/Negative/Zero Check using Comparison Operators (>, <, ==) ---
  String signResult; // To store "positive", "negative", or "zero"

  // Check if the number is greater than 0
  if (numberToAnalyze > 0) {
    signResult = "positive";
  }
  // If not positive, check if it's less than 0
  else if (numberToAnalyze < 0) {
    signResult = "negative";
  }
  // If it's neither greater than nor less than 0, it must be 0
  else {
    signResult = "zero";
  }

  // Print the sign result
  print("Sign Check: The number is $signResult.");

  // --- Combined Output ---
  print("\n--- Final Analysis ---");
  // Special handling for zero to make the sentence flow better
  if (signResult == "zero") {
     print("The number $numberToAnalyze is $evenOddResult and is $signResult.");
  } else {
     print("The number $numberToAnalyze is $evenOddResult and $signResult.");
  }
  print("----------------------");
}
```

---