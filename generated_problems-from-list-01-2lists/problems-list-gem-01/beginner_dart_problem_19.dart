Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description: Temperature Conversion Functions**

**Goal:** Write a Dart program that defines and uses functions to convert temperatures between Celsius and Fahrenheit.

**Requirements:**

1.  **`celsiusToFahrenheit` function:**
    *   Define a function named `celsiusToFahrenheit`.
    *   It should accept one parameter: a `double` representing the temperature in Celsius.
    *   It should return a `double` representing the equivalent temperature in Fahrenheit.
    *   Use the formula: Fahrenheit = (Celsius * 9/5) + 32.

2.  **`fahrenheitToCelsius` function:**
    *   Define a function named `fahrenheitToCelsius`.
    *   It should accept one parameter: a `double` representing the temperature in Fahrenheit.
    *   It should return a `double` representing the equivalent temperature in Celsius.
    *   Use the formula: Celsius = (Fahrenheit - 32) * 5/9.

3.  **Main Execution (`main` function):**
    *   Inside the `main` function, declare a variable holding a temperature in Celsius (e.g., `25.0`).
    *   Call the `celsiusToFahrenheit` function with this value and store the returned Fahrenheit value in a variable.
    *   Print the original Celsius temperature and the converted Fahrenheit temperature in a user-friendly format (e.g., "25.0°C is equal to 77.0°F").
    *   Declare a variable holding a temperature in Fahrenheit (e.g., `77.0`).
    *   Call the `fahrenheitToCelsius` function with this value and store the returned Celsius value in a variable.
    *   Print the original Fahrenheit temperature and the converted Celsius temperature in a user-friendly format (e.g., "77.0°F is equal to 25.0°C").

---

**Dart Solution:**

```dart
// Function to convert Celsius to Fahrenheit
// Takes a double (celsius) as input
// Returns a double (fahrenheit)
double celsiusToFahrenheit(double celsius) {
  // Apply the conversion formula: F = (C * 9/5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;
  return fahrenheit;
}

// Function to convert Fahrenheit to Celsius
// Takes a double (fahrenheit) as input
// Returns a double (celsius)
double fahrenheitToCelsius(double fahrenheit) {
  // Apply the conversion formula: C = (F - 32) * 5/9
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

// Main function - the entry point of the program
void main() {
  // --- Test Celsius to Fahrenheit conversion ---
  double tempCelsius = 25.0;
  // Call the function and store the result
  double convertedFahrenheit = celsiusToFahrenheit(tempCelsius);
  // Print the result
  print('$tempCelsius°C is equal to $convertedFahrenheit°F'); // Expected: 25.0°C is equal to 77.0°F

  // --- Test Fahrenheit to Celsius conversion ---
  double tempFahrenheit = 77.0;
  // Call the function and store the result
  double convertedCelsius = fahrenheitToCelsius(tempFahrenheit);
  // Print the result
  print('$tempFahrenheit°F is equal to $convertedCelsius°C'); // Expected: 77.0°F is equal to 25.0°C

  // --- Additional Test Cases (Optional) ---
  double boilingCelsius = 100.0;
  print('$boilingCelsius°C is equal to ${celsiusToFahrenheit(boilingCelsius)}°F'); // Expected: 100.0°C is equal to 212.0°F

  double freezingFahrenheit = 32.0;
  print('$freezingFahrenheit°F is equal to ${fahrenheitToCelsius(freezingFahrenheit)}°C'); // Expected: 32.0°F is equal to 0.0°C
}
```

---