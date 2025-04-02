Okay, here is a beginner Dart problem focusing on `for` loops for generating a multiplication table, along with its solution.

--- Problem Description ---

**Title:** Generate a Multiplication Table

**Goal:**
Write a Dart program that asks for (or defines) a number and then uses a `for` loop to print its multiplication table from 1 up to 10.

**Requirements:**
1.  Define an integer variable `number` and assign it a value (e.g., 5, 7, 12).
2.  Use a `for` loop that iterates from 1 to 10 (inclusive).
3.  Inside the loop, calculate the product of `number` and the current loop counter.
4.  Print each line of the multiplication table in a clear format, for example: `5 x 1 = 5`, `5 x 2 = 10`, ..., `5 x 10 = 50`.
5.  Add a heading before printing the table, like "Multiplication Table for [number]:".

--- Solution Code ---

```dart
void main() {
  // 1. Define the number for which to generate the table
  int number = 7; // You can change this value to generate a different table

  // 5. Print a heading for the table
  print("Multiplication Table for $number:");
  print("------------------------"); // Optional separator line

  // 2. Use a for loop to iterate from 1 to 10
  for (int i = 1; i <= 10; i++) {
    // 3. Calculate the product
    int result = number * i;

    // 4. Print the multiplication line in the specified format
    // Using string interpolation ($) to embed variables in the string
    print("$number x $i = $result");
  }

  print("------------------------"); // Optional separator line
}
```

**Explanation:**

1.  **`void main() { ... }`**: This is the main entry point of every Dart program.
2.  **`int number = 7;`**: Declares an integer variable named `number` and initializes it with the value 7. This is the number whose multiplication table we want.
3.  **`print("Multiplication Table for $number:");`**: Prints a descriptive heading. The `$number` part uses string interpolation to insert the value of the `number` variable into the string.
4.  **`for (int i = 1; i <= 10; i++) { ... }`**: This is the `for` loop:
    *   `int i = 1;`: Initializes a loop counter variable `i` to 1.
    *   `i <= 10;`: The loop continues as long as `i` is less than or equal to 10.
    *   `i++`: Increments `i` by 1 after each iteration.
5.  **`int result = number * i;`**: Inside the loop, this line calculates the product of the fixed `number` and the current value of the loop counter `i`. The result is stored in the `result` variable.
6.  **`print("$number x $i = $result");`**: This line prints the formatted output for each step of the multiplication table, again using string interpolation.