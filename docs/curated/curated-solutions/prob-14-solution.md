## Solution: Problem 14 - Combining Decisions with Operators

```dart
void main() {
  int number = 10; // Try changing this value! (e.g., 7, -4, -5, 0)

  String description = ""; // We will build the description string

  // --- Your Code Here ---
  if (number == 0) {
    description = "0 is zero and even.";
  } else if (number > 0 && number % 2 == 0) {
    description = "$number is positive and even.";
  } else if (number > 0 && number % 2 != 0) {
    description = "$number is positive and odd.";
  } else if (number < 0 && number % 2 == 0) {
    description = "$number is negative and even.";
  } else {
    description = "$number is negative and odd.";
  }
  // --- End Your Code ---

  print(description); // Print the final description
}
```