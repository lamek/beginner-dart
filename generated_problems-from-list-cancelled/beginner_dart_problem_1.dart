Okay, here is a beginner Dart problem focused on variables, basic data types, and calculation, along with its solution.

---

**Problem Description**

**Dart Programming Problem: Simple Interest Calculator**

**Objective:**
Write a Dart program that calculates simple interest based on given principal amount, annual interest rate, and time period in years. This exercise will help you practice declaring variables with appropriate data types (`double` and `int`) and performing basic arithmetic operations.

**Requirements:**
1.  Declare a variable named `principal` to store the initial amount. Use the `double` data type and assign it a value (e.g., 1500.0).
2.  Declare a variable named `rate` to store the annual interest rate (as a percentage). Use the `double` data type and assign it a value (e.g., 4.5).
3.  Declare a variable named `time` to store the time period in years. Use the `int` data type and assign it a value (e.g., 3).
4.  Calculate the simple interest using the formula: `Simple Interest = (Principal * Rate * Time) / 100`.
5.  Store the calculated interest in a variable named `simpleInterest` (use `double` for this, as the result might be fractional).
6.  Print the calculated `simpleInterest` to the console along with a descriptive message, for example: "The simple interest is: [calculated value]".

---

**Solution Code**

```dart
void main() {
  // 1. Declare a variable for the principal amount (double)
  double principal = 1500.0;

  // 2. Declare a variable for the annual interest rate (double)
  double rate = 4.5; // Represents 4.5%

  // 3. Declare a variable for the time period in years (int)
  int time = 3;

  // 4. Calculate the simple interest using the formula
  // Simple Interest = (Principal * Rate * Time) / 100
  double simpleInterest = (principal * rate * time) / 100;

  // 5. The result is already stored in the 'simpleInterest' variable.

  // 6. Print the calculated simple interest with a descriptive message
  print("----- Simple Interest Calculation -----");
  print("Principal Amount: \$${principal}");
  print("Annual Interest Rate: ${rate}%");
  print("Time Period: ${time} years");
  print("------------------------------------");
  // Using string interpolation ($) to include the variable's value in the string
  print("The calculated simple interest is: \$${simpleInterest}"); 
}
```

**Explanation:**

1.  `void main() { ... }`: This is the entry point of every Dart program.
2.  `double principal = 1500.0;`: Declares a variable `principal` of type `double` (for numbers with decimal points) and initializes it with `1500.0`.
3.  `double rate = 4.5;`: Declares `rate` as `double` and initializes it with `4.5`.
4.  `int time = 3;`: Declares `time` as `int` (for whole numbers) and initializes it with `3`.
5.  `double simpleInterest = (principal * rate * time) / 100;`: Performs the calculation. The result of the multiplication and division might be a decimal, so it's stored in a `double` variable `simpleInterest`.
6.  `print(...)`: This function outputs text to the console.
7.  `$variableName`: This is called string interpolation. It allows you to easily embed the value of a variable directly inside a string literal (prefixed with `$`). The `\$` before `principal` and `simpleInterest` is used to print a literal dollar sign, as `$` has a special meaning for interpolation.