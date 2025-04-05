## Solution: Problem 10 - Functions That Return Values (Calculating Area)

```dart
// Define your calculateRectangleArea function here
// It should take two int parameters and return an int
int calculateRectangleArea(int length, int width) {
  int area = length * width;
  return area;
}

void main() {
  // Call the function, store the result
  int area = calculateRectangleArea(10, 5); // Example call

  // Print the result
  print('The area of the rectangle is: $area'); // Using string interpolation
}
```