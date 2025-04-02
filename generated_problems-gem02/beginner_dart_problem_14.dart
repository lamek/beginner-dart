Okay, here is a beginner Dart problem focused on using a `switch` statement for control flow, along with its solution.

---

**Problem Description: Day of the Week Printer**

**Goal:** Write a Dart program that takes an integer representing a day of the week (where 1 represents Monday, 2 represents Tuesday, ..., and 7 represents Sunday) and prints the corresponding day name to the console.

**Requirements:**

1.  Define an integer variable to hold the day number (you can hardcode a value between 1 and 7 for testing, like `int dayNumber = 3;`).
2.  Use a `switch` statement to check the value of the `dayNumber` variable.
3.  For each valid day number (1 through 7), print the corresponding day name (e.g., "Monday", "Tuesday", etc.).
4.  If the `dayNumber` is outside the valid range (1-7), print an error message like "Invalid day number."

**Example Input:**

```
int dayNumber = 4;
```

**Example Output:**

```
Thursday
```

**Example Input:**

```
int dayNumber = 9;
```

**Example Output:**

```
Invalid day number.
```

---

**Solution Code**

```dart
import 'dart:io'; // Not strictly needed for hardcoded value, but good practice if you extend it later for input

void main() {
  // 1. Define the day number variable (hardcoded for this example)
  //    Try changing this value to test different cases (e.g., 1, 5, 7, 0, 8)
  int dayNumber = 5;

  print("Checking day number: $dayNumber"); // Optional: Print the input number

  // 2. Use a switch statement to check the dayNumber
  switch (dayNumber) {
    case 1:
      // 3. Print the corresponding day name for case 1
      print("Monday");
      break; // Exit the switch statement

    case 2:
      print("Tuesday");
      break;

    case 3:
      print("Wednesday");
      break;

    case 4:
      print("Thursday");
      break;

    case 5:
      print("Friday");
      break;

    case 6:
      print("Saturday");
      break;

    case 7:
      print("Sunday");
      break;

    // 4. Handle cases where the number is outside the 1-7 range
    default:
      print("Invalid day number. Please use a number between 1 and 7.");
      break; // Optional for default if it's the last statement, but good practice
  }
}

/*
Explanation:
1.  `void main() { ... }`: This is the entry point of the Dart program.
2.  `int dayNumber = 5;`: We declare an integer variable `dayNumber` and assign it a value (5 in this case).
3.  `switch (dayNumber) { ... }`: This initiates a switch statement that evaluates the value of `dayNumber`.
4.  `case 1: ... break;`: If `dayNumber` is exactly 1, the code inside this block (`print("Monday");`) is executed. The `break;` statement is crucial; it stops the execution within the switch and prevents "fall-through" to the next case.
5.  `case 2:` through `case 7:`: These handle the other valid days similarly.
6.  `default: ... break;`: If `dayNumber` does not match any of the preceding `case` values (1 through 7), the code inside the `default` block is executed, printing the error message.
*/
```

**How to Run:**

1.  Save the code in a file named `day_of_week.dart`.
2.  Open a terminal or command prompt.
3.  Navigate to the directory where you saved the file.
4.  Run the code using the Dart SDK: `dart day_of_week.dart`
5.  You can modify the value assigned to `dayNumber` in the code and run it again to see different outputs.