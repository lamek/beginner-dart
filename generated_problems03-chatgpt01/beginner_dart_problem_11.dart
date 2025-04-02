Okay, here is a beginner Dart problem based on FizzBuzz, focusing on control flow.

---

**Problem Description**

**Title:** Dart Control Flow Practice: FizzBuzz

**Objective:**
Write a Dart program that prints numbers from 1 to 20 (inclusive) to the console. However, follow these specific rules:

1.  If a number is divisible by 3, print the word "Fizz" instead of the number.
2.  If a number is divisible by 5, print the word "Buzz" instead of the number.
3.  If a number is divisible by *both* 3 and 5, print the word "FizzBuzz" instead of the number.
4.  If a number is not divisible by 3 or 5, print the number itself.

**Concepts to Practice:**
*   Loops (specifically a `for` loop for iterating through a range)
*   Conditional statements (`if`, `else if`, `else`)
*   Modulo operator (`%`) for checking divisibility

**Expected Output:**
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
17
Fizz
19
Buzz
```

---

**Solution Code**

```dart
void main() {
  // Loop through numbers from 1 to 20
  for (int i = 1; i <= 20; i++) {
    // Check for divisibility by both 3 and 5 FIRST
    // This is important because if we checked for 3 or 5 individually first,
    // this condition would never be met for numbers like 15.
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    }
    // Check for divisibility by 3
    else if (i % 3 == 0) {
      print('Fizz');
    }
    // Check for divisibility by 5
    else if (i % 5 == 0) {
      print('Buzz');
    }
    // If none of the above conditions are true, print the number
    else {
      print(i);
    }
  }
}
```