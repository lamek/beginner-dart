Okay, here is a beginner Dart problem based on FizzBuzz, focusing on control flow.

---

**Problem Description: The FizzBuzz Challenge**

**Goal:** Write a Dart program that prints the numbers from 1 to 100 (inclusive) to the console, one number per line.

**Rules:**
*   For numbers that are multiples of 3, print "Fizz" instead of the number.
*   For numbers that are multiples of 5, print "Buzz" instead of the number.
*   For numbers that are multiples of *both* 3 and 5, print "FizzBuzz" instead of the number.
*   For numbers that are not multiples of 3 or 5, print the number itself.

**Concepts to Apply:**
*   Iteration (using a `for` or `while` loop) to go through numbers 1 to 100.
*   Conditional logic (using `if`, `else if`, and `else` statements) to check the divisibility rules.
*   The modulo operator (`%`) is helpful for checking divisibility (e.g., `number % 3 == 0` means `number` is a multiple of 3).

**Example Output Snippet:**
```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
...
98
Fizz
Buzz
```

---

**Solution Code:**

```dart
void main() {
  // Loop through numbers from 1 to 100 (inclusive)
  for (int i = 1; i <= 100; i++) {
    
    // Check for multiples of both 3 and 5 FIRST
    // This is important because otherwise, multiples of 15 (like 15, 30)
    // would incorrectly print "Fizz" or "Buzz" instead of "FizzBuzz".
    if (i % 3 == 0 && i % 5 == 0) { // or use: if (i % 15 == 0)
      print('FizzBuzz');
    } 
    // Check for multiples of 3 (that are not also multiples of 5)
    else if (i % 3 == 0) {
      print('Fizz');
    } 
    // Check for multiples of 5 (that are not also multiples of 3)
    else if (i % 5 == 0) {
      print('Buzz');
    } 
    // If none of the above conditions are met, print the number itself
    else {
      print(i); 
    }
  }
}
```