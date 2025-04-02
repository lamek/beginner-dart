Okay, here is a beginner Dart problem focusing on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Title:** Temperature Conversion Functions

**Goal:** Create two functions in Dart to handle temperature conversions between Celsius and Fahrenheit.

**Requirements:**

1.  **`celsiusToFahrenheit` Function:**
    *   Create a function named `celsiusToFahrenheit`.
    *   This function should accept one parameter: a `double` representing the temperature in Celsius.
    *   This function should return a `double` representing the equivalent temperature in Fahrenheit.
    *   Use the formula: `F = (C * 9/5) + 32`

2.  **`fahrenheitToCelsius` Function:**
    *   Create a function named `fahrenheitToCelsius`.
    *   This function should accept one parameter: a `double` representing the temperature in Fahrenheit.
    *   This function should return a `double` representing the equivalent temperature in Celsius.
    *   Use the formula: `C = (F - 32) * 5/9`

3.  **Testing:**
    *   In the `main` function, call both functions with at least one sample value each (e.g., convert 0°C to Fahrenheit and 32°F to Celsius).
    *   Print the results to the console to verify that your functions work correctly.

---

**Solution Code**

```dart
import 'dart:io'; // Not strictly needed for core logic, but good practice

// Function to convert Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  // Formula: F = (C * 9/5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;
  return fahrenheit;
}

// Function to convert Fahrenheit to Celsius
double fahrenheitToCelsius(double fahrenheit) {
  // Formula: C = (F - 32) * 5/9
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

void main() {
  // --- Test Cases ---

  // Test celsiusToFahrenheit
  double tempCelsius1 = 0.0;
  double resultFahrenheit1 = celsiusToFahrenheit(tempCelsius1);
  print('$tempCelsius1 degrees Celsius is equal to $resultFahrenheit1 degrees Fahrenheit.'); // Expected: 32.0

  double tempCelsius2 = 100.0;
  double resultFahrenheit2 = celsiusToFahrenheit(tempCelsius2);
  print('$tempCelsius2 degrees Celsius is equal to $resultFahrenheit2 degrees Fahrenheit.'); // Expected: 212.0

  double tempCelsius3 = 25.0;
  double resultFahrenheit3 = celsiusToFahrenheit(tempCelsius3);
  print('$tempCelsius3 degrees Celsius is equal to $resultFahrenheit3 degrees Fahrenheit.'); // Expected: 77.0

  print('---'); // Separator

  // Test fahrenheitToCelsius
  double tempFahrenheit1 = 32.0;
  double resultCelsius1 = fahrenheitToCelsius(tempFahrenheit1);
  print('$tempFahrenheit1 degrees Fahrenheit is equal to $resultCelsius1 degrees Celsius.'); // Expected: 0.0

  double tempFahrenheit2 = 212.0;
  double resultCelsius2 = fahrenheitToCelsius(tempFahrenheit2);
  print('$tempFahrenheit2 degrees Fahrenheit is equal to $resultCelsius2 degrees Celsius.'); // Expected: 100.0

  double tempFahrenheit3 = 77.0;
  double resultCelsius3 = fahrenheitToCelsius(tempFahrenheit3);
  print('$tempFahrenheit3 degrees Fahrenheit is equal to $resultCelsius3 degrees Celsius.'); // Expected: 25.0
}
```