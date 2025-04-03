Okay, here is the problem and solution formatted into the template structure.

```markdown
---
title: Simple Interest Calculator using Functions
category: Functions
difficulty: Beginner
focus:
  - Functions (Definition, Calling)
  - Function Parameters
  - Return Values
  - double
  - Arithmetic Operations
  - print
  - String Interpolation
---

# Simple Interest Calculator using Functions

## Problem Description

**Goal:** Write a Dart program to calculate simple interest using a dedicated function.

## Requirements

1.  **Create a Function:** Define a function named `calculateSimpleInterest`.
2.  **Parameters:** This function should accept three parameters:
    *   `principal` (type `double`): The initial amount of money.
    *   `rate` (type `double`): The annual interest rate (as a percentage, e.g., 5 for 5%).
    *   `time` (type `double`): The time period in years.
3.  **Calculation:** Inside the function, calculate the simple interest using the formula:
    `Simple Interest = (principal * rate * time) / 100`
4.  **Return Value:** The function should return the calculated simple interest amount (as a `double`).
5.  **Main Function:** In your `main` function:
    *   Define sample values for principal, rate, and time.
    *   Call the `calculateSimpleInterest` function with these values.
    *   Store the returned result in a variable.
    *   Print the calculated simple interest to the console in a user-friendly format (e.g., "The simple interest is: $[amount]").

## Focus

This problem focuses on:

*   Defining and calling functions (`calculateSimpleInterest`, `main`).
*   Passing arguments (parameters) to functions (`principal`, `rate`, `time`).
*   Returning a value (`double`) from a function.
*   Using the `double` data type for calculations.
*   Performing basic arithmetic operations (`*`, `/`).
*   Using `print` for console output.
*   Using string interpolation (`$...` or `${...}`) for formatted output.
*   Using `toStringAsFixed()` for number formatting (optional but good practice for currency).

## Boilerplate Code

```dart
// Function to calculate simple interest
// Takes principal, rate (as percentage), and time (in years) as input
// Returns the calculated simple interest as a double
double calculateSimpleInterest(double principal, double rate, double time) {
  // TODO: Implement the simple interest calculation using the formula
  // Simple Interest = (principal * rate * time) / 100
  // TODO: Return the calculated interest
  return 0.0; // Placeholder return value
}

void main() {
  // TODO: Define sample input values for principal, rate, and time
  double principalAmount = 0.0; // Example: 5000.0;
  double annualRate = 0.0;       // Example: 3.5;
  double timeInYears = 0.0;        // Example: 2.0;

  // TODO: Call the calculateSimpleInterest function with the sample values
  double simpleInterest = calculateSimpleInterest(principalAmount, annualRate, timeInYears);

  // TODO: Print the calculated simple interest to the console
  // Example format: "The calculated simple interest is: $[amount]"
  print("Calculating..."); // Placeholder print
}
```

## Solution Code

```dart
// Function to calculate simple interest
// Takes principal, rate (as percentage), and time (in years) as input
// Returns the calculated simple interest as a double
double calculateSimpleInterest(double principal, double rate, double time) {
  // Calculate simple interest using the formula: (P * R * T) / 100
  double interest = (principal * rate * time) / 100;
  return interest; // Return the calculated amount
}

void main() {
  // Define sample input values
  double principalAmount = 5000.0; // Example principal amount
  double annualRate = 3.5;       // Example annual interest rate (3.5%)
  double timeInYears = 2.0;        // Example time period in years

  // Call the function to calculate the interest
  double simpleInterest = calculateSimpleInterest(principalAmount, annualRate, timeInYears);

  // Print the input values and the calculated result
  print("--- Simple Interest Calculation ---");
  print("Principal Amount: \$${principalAmount.toStringAsFixed(2)}");
  print("Annual Interest Rate: ${annualRate}%");
  print("Time Period: ${timeInYears} years");
  print("-----------------------------------");
  // Using toStringAsFixed(2) to format the currency nicely to two decimal places
  print("The calculated simple interest is: \$${simpleInterest.toStringAsFixed(2)}");
}
```
```