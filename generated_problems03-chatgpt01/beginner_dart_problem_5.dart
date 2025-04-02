Okay, here is a beginner Dart problem focusing on variables and the `double` data type for a simple temperature conversion.

---

**Problem Description**

**Title:** Simple Celsius to Fahrenheit Converter

**Task:**
Write a Dart program that performs the following steps:

1.  Declare a variable to store a temperature value in Celsius. Use the `double` data type to allow for decimal values (e.g., 23.5). Assign an initial value to this variable (e.g., 25.0).
2.  Declare another variable to store the calculated temperature in Fahrenheit.
3.  Calculate the Fahrenheit temperature using the standard formula:
    *Fahrenheit = (Celsius * 9/5) + 32*
4.  Print the original Celsius temperature and the calculated Fahrenheit temperature to the console in a user-friendly format. For example: "25.0 degrees Celsius is equal to 77.0 degrees Fahrenheit."

**Hint:** Remember that `9/5` can be represented as `1.8` in decimal form.

---

**Solution Code**

```dart
void main() {
  // 1. Declare a double variable for Celsius and assign a value.
  double celsius = 25.0; 

  // 2. Declare a double variable for Fahrenheit.
  //    We can calculate and assign in the same step.
  // 3. Calculate Fahrenheit using the formula: F = (C * 9/5) + 32 or F = (C * 1.8) + 32
  double fahrenheit = (celsius * 1.8) + 32;

  // 4. Print the result using string interpolation.
  print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.'); 
  
  // Example with a different Celsius value:
  celsius = 0.0;
  fahrenheit = (celsius * 1.8) + 32;
  print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.'); 

  celsius = -10.5;
  fahrenheit = (celsius * 1.8) + 32;
  print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit.'); 
}
```

---