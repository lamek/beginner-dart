Okay, here is a beginner Dart problem focused on variables, basic data types, and simple calculations, along with its solution.

---

**Problem Description: Dart Temperature Converter**

**Objective:**
Write a Dart program that converts temperatures between Celsius and Fahrenheit using the standard conversion formulas.

**Requirements:**

1.  **Variables:**
    *   Declare a variable of type `double` to store a temperature value in Celsius (e.g., `25.0`).
    *   Declare another variable of type `double` to store a temperature value in Fahrenheit (e.g., `77.0`).
2.  **Data Types:** Utilize `double` for temperature values to handle potential decimal points. Use `String` for printing descriptive labels.
3.  **Conversion Logic:**
    *   Calculate the Fahrenheit equivalent of the Celsius temperature using the formula: `F = (C * 9/5) + 32`. Store this result in a new `double` variable.
    *   Calculate the Celsius equivalent of the Fahrenheit temperature using the formula: `C = (F - 32) * 5/9`. Store this result in a new `double` variable.
4.  **Output:**
    *   Print the result of the Celsius to Fahrenheit conversion with a clear label (e.g., "25.0 degrees Celsius is 77.0 degrees Fahrenheit.").
    *   Print the result of the Fahrenheit to Celsius conversion with a clear label (e.g., "77.0 degrees Fahrenheit is 25.0 degrees Celsius.").

---

**Dart Solution Code:**

```dart
void main() {
  // --- 1. Variables ---
  // Declare initial temperatures using the 'double' data type
  // because temperatures often involve decimal points.
  double tempCelsius = 25.0;
  double tempFahrenheit = 77.0;

  // --- 3. Conversion Logic ---

  // Convert Celsius to Fahrenheit: F = (C * 9/5) + 32
  // Dart performs floating-point division with /
  double convertedToFahrenheit = (tempCelsius * 9 / 5) + 32;

  // Convert Fahrenheit to Celsius: C = (F - 32) * 5/9
  double convertedToCelsius = (tempFahrenheit - 32) * 5 / 9;

  // --- 4. Output ---
  print("--- Temperature Conversion Results ---");

  // Use string interpolation ($variableName) to embed values in the String labels.
  print("$tempCelsius degrees Celsius is $convertedToFahrenheit degrees Fahrenheit.");
  print("$tempFahrenheit degrees Fahrenheit is $convertedToCelsius degrees Celsius.");

  // --- Optional: Demonstrating other basic types mentioned in the prompt ---

  // String for a final message
  String statusMessage = "Conversion calculations complete.";
  print(statusMessage);

  // Integer example (less precise for general temperature)
  int numberOfConversions = 2;
  print("Number of conversions performed: $numberOfConversions");

  // Boolean example
  bool isFreezingCelsius = tempCelsius <= 0; // Check if the initial Celsius temp is at or below freezing
  print("Is $tempCelsius°C at or below freezing? $isFreezingCelsius");

  // Note: List and Map are not naturally required for this simple conversion,
  // but are fundamental Dart collection types you'll learn more about.
}
```

---