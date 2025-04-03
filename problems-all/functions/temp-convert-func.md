---
title: Celsius to Fahrenheit Converter Function
category: Functions
difficulty: Beginner
focus:
  - Function Definition
  - Parameters
  - Return Values
  - double
  - Arithmetic Operations
  - Function Calls
  - String Interpolation
  - print
---

# Celsius to Fahrenheit Converter Function

## Problem Description

Write a Dart function that converts a temperature from Celsius to Fahrenheit.

## Requirements

1.  **Create a function:**
    *   Name the function `celsiusToFahrenheit`.
    *   It should accept one parameter: a `double` representing the temperature in Celsius.
    *   It should return a `double` representing the equivalent temperature in Fahrenheit.
2.  **Conversion Formula:** Use the standard formula: Fahrenheit = (Celsius * 9/5) + 32.
3.  **Call the function:**
    *   In your `main` function, call `celsiusToFahrenheit` at least three times with different Celsius values (e.g., 0.0, 25.0, 100.0).
4.  **Print the results:**
    *   For each function call, print the original Celsius value and the calculated Fahrenheit value in a clear, readable format (e.g., "0.0 degrees Celsius is 32.0 degrees Fahrenheit.").

## Focus

This problem focuses on:

*   Defining a function (`celsiusToFahrenheit`).
*   Using parameters (`double celsius`).
*   Returning a value from a function (`return`).
*   Specifying data types for parameters and return values (`double`).
*   Performing arithmetic operations (`*`, `/`, `+`).
*   Calling a function from `main`.
*   Printing output to the console (`print`) using string interpolation (`$variableName`).

## Boilerplate Code

```dart
// TODO: Define the celsiusToFahrenheit function here
// It should take one double argument (Celsius) and return a double (Fahrenheit).

void main() {
  // Define some Celsius temperatures to test
  double tempCelsius1 = 0.0;
  double tempCelsius2 = 25.0;
  double tempCelsius3 = 100.0;
  double tempCelsius4 = -10.0;

  // TODO: Call the celsiusToFahrenheit function for each temperature
  //       and store the result in a new variable (e.g., tempFahrenheit1).


  // TODO: Print the results in the specified format, for example:
  // print('$tempCelsius1 degrees Celsius is $tempFahrenheit1 degrees Fahrenheit.');
  // print(...); // Print for tempCelsius2
  // print(...); // Print for tempCelsius3
  // print(...); // Print for tempCelsius4
}
```