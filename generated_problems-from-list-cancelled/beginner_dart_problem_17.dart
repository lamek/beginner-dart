Okay, here is the beginner Dart problem and its solution.

---

## Problem Description

**Topic:** Functions (parameters, return values)

**Problem:** Rectangle Area Function

1.  **Define the Function:** Create a Dart function named `calculateRectangleArea`.
2.  **Parameters:** This function should accept two parameters:
    *   `width` (of type `double`)
    *   `height` (of type `double`)
3.  **Calculation:** Inside the function, calculate the area of the rectangle using the formula: `area = width * height`.
4.  **Return Value:** The function should *return* the calculated area (which should be a `double`).
5.  **Call the Function:** In your `main` function, call `calculateRectangleArea` with sample values (e.g., width = 5.0, height = 10.0).
6.  **Print the Result:** Store the value returned by the function in a variable and print it to the console in a user-friendly format (e.g., "The area of the rectangle is: 50.0").

---

## Dart Solution

```dart
// 1. Define the function `calculateRectangleArea`
// It takes two double parameters: width and height
// It returns a double value: the calculated area
double calculateRectangleArea(double width, double height) {
  // 3. Calculate the area
  double area = width * height;
  // 4. Return the calculated area
  return area;
  // Or more concisely: return width * height;
}

void main() {
  // 5. Call the function with sample values
  double sampleWidth = 5.0;
  double sampleHeight = 10.0;
  
  // Store the returned value in a variable
  double calculatedArea = calculateRectangleArea(sampleWidth, sampleHeight);
  
  // 6. Print the result to the console
  print("Calculating area for width: $sampleWidth and height: $sampleHeight");
  print("The area of the rectangle is: $calculatedArea");

  // Example with different values
  double anotherWidth = 7.2;
  double anotherHeight = 3.5;
  double anotherArea = calculateRectangleArea(anotherWidth, anotherHeight);
  print("Calculating area for width: $anotherWidth and height: $anotherHeight");
  print("The area of the rectangle is: $anotherArea"); 
}
```

**Explanation:**

1.  `double calculateRectangleArea(double width, double height)`: This line declares the function. `double` before the name indicates the *return type*. `(double width, double height)` defines the *parameters* the function accepts.
2.  `return area;`: This statement sends the value stored in the `area` variable back to where the function was called.
3.  `void main()`: This is the entry point of the Dart program.
4.  `double calculatedArea = calculateRectangleArea(sampleWidth, sampleHeight);`: Here, the `calculateRectangleArea` function is *called* with `5.0` and `10.0` as arguments. The value returned by the function (which is 50.0) is then assigned to the `calculatedArea` variable.
5.  `print(...)`: These lines display the output on the console, using string interpolation (`$variableName`) to include the values of the variables directly within the string.