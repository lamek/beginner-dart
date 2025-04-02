Okay, here is a beginner Dart problem focused on functions, parameters, and return values, specifically for temperature conversion, along with its solution.

---

## Problem Description

**Topic:** Dart Functions (Parameters, Return Values)

**Goal:** Practice creating and using functions in Dart to perform temperature conversions.

**Task:**

1.  **Create a function `celsiusToFahrenheit`:**
    *   It should accept one parameter: a `double` representing the temperature in Celsius.
    *   It should calculate the equivalent temperature in Fahrenheit using the formula: `F = (C * 9/5) + 32`.
    *   It should return the calculated Fahrenheit temperature as a `double`.

2.  **Create a function `fahrenheitToCelsius`:**
    *   It should accept one parameter: a `double` representing the temperature in Fahrenheit.
    *   It should calculate the equivalent temperature in Celsius using the formula: `C = (F - 32) * 5/9`.
    *   It should return the calculated Celsius temperature as a `double`.

3.  **In the `main` function:**
    *   Define a temperature value in Celsius (e.g., 25.0°C).
    *   Call the `celsiusToFahrenheit` function with this value and store the result.
    *   Print the original Celsius value and the converted Fahrenheit result in a user-friendly format (e.g., "25.0°C is equal to 77.0°F").
    *   Define a temperature value in Fahrenheit (e.g., 77.0°F).
    *   Call the `fahrenheitToCelsius` function with this value and store the result.
    *   Print the original Fahrenheit value and the converted Celsius result in a user-friendly format (e.g., "77.0°F is equal to 25.0°C").

---

## Dart Solution

```dart
// Function to convert Celsius to Fahrenheit
// Takes a double `celsius` as input
// Returns the equivalent temperature in Fahrenheit as a double
double celsiusToFahrenheit(double celsius) {
  // Formula: F = (C * 9/5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;
  return fahrenheit;
}

// Function to convert Fahrenheit to Celsius
// Takes a double `fahrenheit` as input
// Returns the equivalent temperature in Celsius as a double
double fahrenheitToCelsius(double fahrenheit) {
  // Formula: C = (F - 32) * 5/9
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

// Main function - entry point of the program
void main() {
  // --- Test Case 1: Celsius to Fahrenheit ---
  double tempCelsius = 25.0; // Example temperature in Celsius

  // Call the conversion function
  double convertedFahrenheit = celsiusToFahrenheit(tempCelsius);

  // Print the result
  print('$tempCelsius°C is equal to $convertedFahrenheit°F');

  // --- Test Case 2: Fahrenheit to Celsius ---
  double tempFahrenheit = 77.0; // Example temperature in Fahrenheit

  // Call the conversion function
  double convertedCelsius = fahrenheitToCelsius(tempFahrenheit);

  // Print the result
  print('$tempFahrenheit°F is equal to $convertedCelsius°C');

  // --- Additional Test Cases (Optional) ---
  double boilingCelsius = 100.0;
  double freezingFahrenheit = 32.0;

  print('$boilingCelsius°C is equal to ${celsiusToFahrenheit(boilingCelsius)}°F');
  print('$freezingFahrenheit°F is equal to ${fahrenheitToCelsius(freezingFahrenheit)}°C');
}
```

**Explanation:**

1.  **`celsiusToFahrenheit(double celsius)`:** Defines a function named `celsiusToFahrenheit` that accepts one argument `celsius` of type `double`. It calculates Fahrenheit using the standard formula and `return`s the `double` result.
2.  **`fahrenheitToCelsius(double fahrenheit)`:** Defines a function named `fahrenheitToCelsius` that accepts one argument `fahrenheit` of type `double`. It calculates Celsius using the standard formula (note the parentheses ensuring subtraction happens first) and `return`s the `double` result.
3.  **`main()`:** This is where the program execution begins.
    *   We declare variables (`tempCelsius`, `tempFahrenheit`) to hold our test values.
    *   We call each conversion function, passing the appropriate test value as an argument.
    *   The `return` value from each function call is stored in a new variable (`convertedFahrenheit`, `convertedCelsius`).
    *   `print()` statements are used to display the original temperatures and their converted values, using string interpolation (`$variableName`) for easy formatting.