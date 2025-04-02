Okay, here is a beginner Dart problem focusing on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Title:** Celsius to Fahrenheit Converter Function

**Goal:**
Write a Dart function that converts a temperature from Celsius to Fahrenheit.

**Requirements:**

1.  **Create a function:**
    *   Name the function `celsiusToFahrenheit`.
    *   It should accept one parameter: a `double` representing the temperature in Celsius.
    *   It should return a `double` representing the equivalent temperature in Fahrenheit.
2.  **Conversion Formula:** Use the standard formula: Fahrenheit = (Celsius * 9/5) + 32.
3.  **Call the function:**
    *   In your `main` function, call `celsiusToFahrenheit` at least three times with different Celsius values (e.g., 0.0, 25.0, 100.0).
4.  **Print the results:**
    *   For each function call, print the original Celsius value and the calculated Fahrenheit value in a clear, readable format (e.g., "0.0 degrees Celsius is 32.0 degrees Fahrenheit.").

---

**Solution Code**

```dart
// Function to convert Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  // Apply the conversion formula
  double fahrenheit = (celsius * 9 / 5) + 32;
  // Return the calculated Fahrenheit value
  return fahrenheit;
}

void main() {
  // Define some Celsius temperatures to test
  double tempCelsius1 = 0.0;
  double tempCelsius2 = 25.0;
  double tempCelsius3 = 100.0;
  double tempCelsius4 = -10.0; // Example with a negative temperature

  // Call the function for each temperature and store the result
  double tempFahrenheit1 = celsiusToFahrenheit(tempCelsius1);
  double tempFahrenheit2 = celsiusToFahrenheit(tempCelsius2);
  double tempFahrenheit3 = celsiusToFahrenheit(tempCelsius3);
  double tempFahrenheit4 = celsiusToFahrenheit(tempCelsius4);

  // Print the results
  print('$tempCelsius1 degrees Celsius is $tempFahrenheit1 degrees Fahrenheit.');
  print('$tempCelsius2 degrees Celsius is $tempFahrenheit2 degrees Fahrenheit.');
  print('$tempCelsius3 degrees Celsius is $tempFahrenheit3 degrees Fahrenheit.');
  print('$tempCelsius4 degrees Celsius is $tempFahrenheit4 degrees Fahrenheit.');
}
```

**Explanation:**

1.  **`celsiusToFahrenheit(double celsius)` function:**
    *   Takes one argument `celsius` of type `double`.
    *   Calculates the `fahrenheit` value using the formula. Note that `9 / 5` performs floating-point division in Dart, resulting in `1.8`.
    *   Uses the `return` keyword to send the calculated `fahrenheit` value back to where the function was called.
    *   The function is declared with a return type of `double`.
2.  **`main()` function:**
    *   This is the entry point of the Dart program.
    *   We declare several `double` variables holding Celsius values.
    *   We call the `celsiusToFahrenheit` function for each Celsius value, passing the Celsius temperature as the argument.
    *   The value *returned* by the function is stored in corresponding Fahrenheit variables (`tempFahrenheit1`, `tempFahrenheit2`, etc.).
    *   Finally, `print()` statements use string interpolation (`$variableName`) to display the original and converted temperatures in a user-friendly sentence.