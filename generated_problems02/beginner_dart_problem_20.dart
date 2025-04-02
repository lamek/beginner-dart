Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Goal:** Write a Dart function that converts a temperature from Celsius to Fahrenheit.

**Details:**

1.  **Create a Function:** Define a function named `celsiusToFahrenheit`.
2.  **Parameter:** This function must accept one input parameter: a `double` representing the temperature in degrees Celsius.
3.  **Calculation:** Inside the function, calculate the equivalent temperature in degrees Fahrenheit using the formula:
    `Fahrenheit = (Celsius * 9/5) + 32`
4.  **Return Value:** The function should return the calculated Fahrenheit temperature as a `double`.
5.  **Usage:** In the `main` function of your Dart program:
    *   Call the `celsiusToFahrenheit` function at least three times with different Celsius values (e.g., 0.0, 25.0, 100.0).
    *   For each call, print both the original Celsius temperature and the converted Fahrenheit temperature to the console in a user-friendly format (e.g., "0.0 C is 32.0 F").

---

**Dart Solution Code**

```dart
// Function definition: Converts Celsius to Fahrenheit
// Takes one parameter: 'celsius' (a double)
// Returns: the calculated Fahrenheit temperature (a double)
double celsiusToFahrenheit(double celsius) {
  // Apply the conversion formula: F = (C * 9/5) + 32
  // Use 9.0 and 5.0 to ensure floating-point division
  double fahrenheit = (celsius * 9.0 / 5.0) + 32.0;
  return fahrenheit;
}

void main() {
  // --- Test Case 1 ---
  double celsius1 = 0.0;
  // Call the function with the first Celsius value
  double fahrenheit1 = celsiusToFahrenheit(celsius1);
  // Print the result using string interpolation
  print("$celsius1 C is $fahrenheit1 F");

  // --- Test Case 2 ---
  double celsius2 = 25.0;
  // Call the function with the second Celsius value
  double fahrenheit2 = celsiusToFahrenheit(celsius2);
  // Print the result
  print("$celsius2 C is $fahrenheit2 F");

  // --- Test Case 3 ---
  double celsius3 = 100.0;
  // Call the function with the third Celsius value
  double fahrenheit3 = celsiusToFahrenheit(celsius3);
  // Print the result
  print("$celsius3 C is $fahrenheit3 F");

  // --- Optional: Test Case 4 (Negative Value) ---
  double celsius4 = -10.0;
  double fahrenheit4 = celsiusToFahrenheit(celsius4);
  print("$celsius4 C is $fahrenheit4 F");
}
```

**Explanation:**

1.  **`celsiusToFahrenheit(double celsius)`:** This defines the function. `double` before the name indicates it returns a double value. `double celsius` inside the parentheses declares a parameter named `celsius` of type `double`.
2.  **`double fahrenheit = (celsius * 9.0 / 5.0) + 32.0;`:** This line performs the calculation. We use `9.0` and `5.0` (instead of `9` and `5`) to make sure Dart performs floating-point division, which is necessary for accurate temperature conversion.
3.  **`return fahrenheit;`:** This line sends the calculated `fahrenheit` value back to wherever the function was called from.
4.  **`main()` function:** This is the entry point of the program.
5.  **`double celsiusX = ...;`:** We declare variables to hold the Celsius inputs.
6.  **`double fahrenheitX = celsiusToFahrenheit(celsiusX);`:** This is where we *call* the function. The value of `celsiusX` is passed *into* the function as the `celsius` parameter. The value *returned* by the function is stored in the `fahrenheitX` variable.
7.  **`print("$celsiusX C is $fahrenheitX F");`:** This uses string interpolation (`$variableName`) to create a readable output string showing the original and converted temperatures.