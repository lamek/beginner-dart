Okay, here is a beginner Dart problem focused on increment and decrement operators, along with its solution.

---

**Problem Description: Increment/Decrement Counter**

**Objective:** Practice using basic arithmetic operators, specifically the increment (`++` or `+= 1`) and decrement (`--` or `-= 1`) operators in Dart.

**Task:**

1.  Declare an integer variable named `counter`.
2.  Initialize `counter` with the value `0`.
3.  Increase the value of `counter` by 1, exactly five times. You can use either the post-increment (`counter++`), pre-increment (`++counter`), or compound assignment (`counter += 1`) operator.
4.  Decrease the value of `counter` by 1, exactly two times. You can use either the post-decrement (`counter--`), pre-decrement (`--counter`), or compound assignment (`counter -= 1`) operator.
5.  Print the final value of the `counter` variable to the console using the `print()` function.

**Expected Output:**

```
Final counter value: 3
```

---

**Dart Solution Code**

```dart
void main() {
  // 1. Declare an integer variable named counter
  // 2. Initialize counter with the value 0
  int counter = 0;
  print("Initial counter value: $counter"); // Optional: show initial value

  // 3. Increase the value of counter by 1, five times
  print("Incrementing...");
  counter++; // counter is now 1
  counter++; // counter is now 2
  counter += 1; // counter is now 3 (using alternative)
  counter++; // counter is now 4
  counter++; // counter is now 5
  print("Value after 5 increments: $counter"); // Optional: show intermediate value

  // 4. Decrease the value of counter by 1, two times
  print("Decrementing...");
  counter--; // counter is now 4
  counter -= 1; // counter is now 3 (using alternative)

  // 5. Print the final value of the counter variable
  print("Final counter value: $counter");
}
```

---