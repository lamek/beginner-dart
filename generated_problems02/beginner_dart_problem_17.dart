Okay, here is a beginner Dart problem focused on functions, parameters, and return values, using the Simple Interest calculation scenario.

---

**Problem Description: Simple Interest Calculator Function**

**Goal:** Write a Dart function that calculates simple interest based on given inputs and then call that function to display the result.

**Requirements:**

1.  **Create a Function:**
    *   Define a function named `calculateSimpleInterest`.
    *   This function should accept three parameters:
        *   `principal` (the initial amount of money, use type `double`).
        *   `rate` (the annual interest rate as a percentage, e.g., 5 for 5%, use type `double`).
        *   `time` (the duration in years, use type `double`).
    *   The function should calculate the simple interest using the formula: `Simple Interest = (Principal * Rate * Time) / 100`.
    *   The function should **return** the calculated simple interest (as a `double`).

2.  **Call the Function:**
    *   In the `main` function of your Dart program:
        *   Define sample values for principal, rate, and time.
        *   Call the `calculateSimpleInterest` function, passing these values as arguments.
        *   Store the returned value (the calculated interest) in a variable.
        *   Print the original values (principal, rate, time) and the calculated simple interest to the console in a user-friendly format.

---

**Dart Solution Code**

```dart
import 'dart:io'; // Not strictly necessary for this specific problem, but good practice.

// Function to calculate simple interest
// Takes principal, rate (as percentage), and time (in years) as parameters
// Returns the calculated simple interest as a double
double calculateSimpleInterest(double principal, double rate, double time) {
  // Formula: SI = (P * R * T) / 100
  double interest = (principal * rate * time) / 100;
  return interest;
}

void main() {
  // Define sample input values
  double principalAmount = 1500.0; // Example principal amount
  double interestRate = 7.5;      // Example annual interest rate (7.5%)
  double timeInYears = 3.0;       // Example time duration in years

  // Call the function to calculate simple interest
  double calculatedInterest = calculateSimpleInterest(principalAmount, interestRate, timeInYears);

  // Print the results
  print("--- Simple Interest Calculation ---");
  print("Principal Amount: \$${principalAmount.toStringAsFixed(2)}"); // Format for currency
  print("Annual Interest Rate: ${interestRate}%");
  print("Time Period: ${timeInYears} years");
  print("-----------------------------------");
  print("Calculated Simple Interest: \$${calculatedInterest.toStringAsFixed(2)}"); // Format for currency
}
```

**Explanation:**

1.  **`calculateSimpleInterest` function:**
    *   It's defined with `double` as the return type and takes three `double` parameters (`principal`, `rate`, `time`).
    *   Inside, it calculates the interest using the standard formula and stores it in the `interest` variable.
    *   The `return interest;` statement sends the calculated value back to wherever the function was called.
2.  **`main` function:**
    *   This is the entry point of the Dart program.
    *   We declare and initialize `principalAmount`, `interestRate`, and `timeInYears` with sample data.
    *   `calculateSimpleInterest(principalAmount, interestRate, timeInYears)` calls our function, passing the variables as arguments. The value returned by the function is stored in the `calculatedInterest` variable.
    *   Finally, `print()` statements are used to display the input values and the final calculated simple interest. `toStringAsFixed(2)` is used to format the currency values nicely to two decimal places.