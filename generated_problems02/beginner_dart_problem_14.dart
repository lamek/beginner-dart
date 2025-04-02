Okay, here is a beginner Dart problem focused on using a `switch` statement for control flow, along with its solution.

---

**Problem Description**

**Dart Control Flow Challenge: Day of the Week**

Write a Dart program that does the following:

1.  Prompts the user to enter a number representing a day of the week (1 through 7).
2.  Reads the user's input from the console.
3.  Uses a `switch` statement to determine the corresponding day name based on the input number:
    *   1 = Monday
    *   2 = Tuesday
    *   3 = Wednesday
    *   4 = Thursday
    *   5 = Friday
    *   6 = Saturday
    *   7 = Sunday
4.  Prints the corresponding day name to the console.
5.  If the user enters a number outside the range of 1-7, or enters non-numeric input, it should print an appropriate error message (e.g., "Invalid input. Please enter a number between 1 and 7.").

**Hint:** You will need to import the `dart:io` library to read user input and use `int.tryParse()` to safely convert the input string to an integer.

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the I/O library for console input

void main() {
  // 1. Prompt the user
  print("Enter a number (1-7) for the day of the week:");

  // 2. Read input from the console
  String? inputString = stdin.readLineSync(); // Read input as a String? (nullable)

  // 3. Validate and parse the input
  if (inputString != null) {
    // Try converting the string to an integer.
    // int.tryParse returns null if the conversion fails.
    int? dayNumber = int.tryParse(inputString);

    if (dayNumber != null) {
      // 4. Use a switch statement to determine the day
      String dayName; // Variable to hold the result

      switch (dayNumber) {
        case 1:
          dayName = "Monday";
          break; // Exit the switch statement
        case 2:
          dayName = "Tuesday";
          break;
        case 3:
          dayName = "Wednesday";
          break;
        case 4:
          dayName = "Thursday";
          break;
        case 5:
          dayName = "Friday";
          break;
        case 6:
          dayName = "Saturday";
          break;
        case 7:
          dayName = "Sunday";
          break;
        default:
          // Handle numbers outside the 1-7 range
          dayName = "Invalid input. Please enter a number between 1 and 7.";
          break;
      }

      // 5. Print the result
      print(dayName);

    } else {
      // Handle cases where input was not a valid number
      print("Invalid input. Please enter a valid number between 1 and 7.");
    }
  } else {
    // Handle cases where readLineSync returned null (e.g., end of input)
    print("No input received.");
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Includes the necessary library for interacting with standard input/output (like reading from the console).
2.  **`main()`**: The entry point of the Dart program.
3.  **`print(...)`**: Displays the prompt message to the user.
4.  **`stdin.readLineSync()`**: Reads a line of text entered by the user in the console. It returns a `String?` (a nullable String) because the input stream could end.
5.  **`if (inputString != null)`**: Checks if any input was actually received.
6.  **`int.tryParse(inputString)`**: Attempts to convert the user's input string into an integer. If the string is not a valid integer representation (e.g., "hello", "1.5"), it returns `null`. Otherwise, it returns the integer value.
7.  **`if (dayNumber != null)`**: Checks if the parsing was successful.
8.  **`switch (dayNumber)`**: This is the core control flow statement. It evaluates the `dayNumber`.
9.  **`case X:`**: Each `case` checks if `dayNumber` matches the value `X`.
10. **`dayName = "..."`**: If a case matches, the corresponding day name is assigned to the `dayName` variable.
11. **`break;`**: Crucial statement. It exits the `switch` block immediately after a match is found and its code executed. Without `break`, the execution would "fall through" to the next case.
12. **`default:`**: This block executes if none of the `case` values match the `dayNumber`. It's used here to handle invalid numbers (like 0, 8, -1).
13. **`print(dayName)`**: Prints the final result (either the day name or the error message).
14. **`else` blocks**: Handle the error scenarios where the input was null or couldn't be parsed into an integer.