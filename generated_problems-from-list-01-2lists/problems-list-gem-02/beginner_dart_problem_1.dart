Okay, here is a beginner Dart problem focused on variables, basic data types, and arithmetic operations, specifically for calculating simple interest.

---

**Problem Description: Simple Interest Calculator**

**Goal:** Write a Dart program that calculates the simple interest given a principal amount, an annual interest rate, and a time period in years.

**Requirements:**

1.  **Declare Variables:**
    *   Declare a variable named `principal` of type `double` to store the initial amount of money. Assign it a value (e.g., `1500.0`).
    *   Declare a variable named `rate` of type `double` to store the annual interest rate (as a percentage). Assign it a value (e.g., `4.3` for 4.3%).
    *   Declare a variable named `time` of type `int` to store the time period in years. Assign it a value (e.g., `3`).
2.  **Calculate Simple Interest:**
    *   Calculate the simple interest using the formula: `Interest = (Principal * Rate * Time) / 100`.
    *   Store the result in a `double` variable named `simpleInterest`.
3.  **Print the Result:**
    *   Print the calculated `simpleInterest` to the console.
    *   Include a descriptive message that clearly shows the principal, rate, time, and the calculated interest. Format the currency values nicely (e.g., two decimal places).

**Example Output:**

```
Calculating Simple Interest...
Principal: $1500.00
Rate: 4.3%
Time: 3 years
-------------------------
Simple Interest: $193.50
```

---

**Dart Solution Code:**

```dart
void main() {
  // 1. Declare Variables
  // Principal amount (using double for potential decimal values in currency)
  double principal = 1500.0;

  // Annual interest rate (as a percentage, using double)
  double rate = 4.3;

  // Time period in years (using int as years are typically whole numbers here)
  int time = 3;

  // 2. Calculate Simple Interest
  // Formula: Interest = (P * R * T) / 100
  double simpleInterest = (principal * rate * time) / 100;

  // 3. Print the Result
  print("Calculating Simple Interest...");
  print("Principal: \$${principal.toStringAsFixed(2)}"); // toStringAsFixed(2) formats to 2 decimal places
  print("Rate: ${rate}%");
  print("Time: ${time} years");
  print("-------------------------");
  print("Simple Interest: \$${simpleInterest.toStringAsFixed(2)}");
}
```

---