Okay, here is a beginner Dart problem focusing on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Goal:** Create a Dart function to calculate simple interest.

**Task:**

1.  Define a function named `calculateInterest`.
2.  This function should accept three parameters:
    *   `principal`: The initial amount of money (use `double` type).
    *   `rate`: The annual interest rate as a percentage (e.g., 5 for 5%) (use `double` type).
    *   `time`: The duration in years (use `int` type).
3.  Inside the function, calculate the simple interest using the formula:
    `Simple Interest = (Principal * Rate * Time) / 100`
4.  The function should **return** the calculated simple interest as a `double`.
5.  Create a `main` function to:
    *   Define sample values for principal, rate, and time.
    *   Call the `calculateInterest` function with these values.
    *   Print the returned simple interest to the console in a user-friendly format (e.g., "The simple interest is: \$XXX.XX").

**Example:**
If you call `calculateInterest(1000.0, 5.0, 2)`, the function should return `100.0`.

---

**Solution Code**

```dart
// Function to calculate simple interest
double calculateInterest(double principal, double rate, int time) {
  // Apply the simple interest formula
  double interest = (principal * rate * time) / 100;
  
  // Return the calculated interest
  return interest; 
}

// Main function to demonstrate the calculateInterest function
void main() {
  // Define sample input values
  double principalAmount = 1500.0;
  double interestRate = 7.5; // 7.5%
  int timeInYears = 3;

  // Call the function to calculate interest
  double calculatedInterest = calculateInterest(principalAmount, interestRate, timeInYears);

  // Print the input values and the result
  print("Calculating Simple Interest:");
  print("Principal Amount: \$${principalAmount.toStringAsFixed(2)}"); // Format to 2 decimal places
  print("Annual Interest Rate: ${interestRate}%");
  print("Time Period: ${timeInYears} years");
  print("-----------------------------");
  print("The calculated Simple Interest is: \$${calculatedInterest.toStringAsFixed(2)}"); // Format to 2 decimal places
}
```

---