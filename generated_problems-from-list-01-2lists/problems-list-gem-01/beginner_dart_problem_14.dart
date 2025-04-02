Okay, here is a beginner Dart problem focused on using a `switch` statement for a simple menu, along with its solution.

---

**Problem Description: Simple Menu Navigation**

**Goal:** Create a simple interactive command-line menu using Dart.

**Requirements:**

1.  **Display Menu:** Print the following menu options to the console:
    ```
    --- Main Menu ---
    1: View Profile
    2: Edit Profile
    3: Exit
    -----------------
    ```
2.  **Get Input:** Prompt the user to enter their choice (a number corresponding to the menu option).
3.  **Read Input:** Read the user's input from the console. Assume the user will enter an integer.
4.  **Process Choice:** Use a `switch` statement to evaluate the user's integer choice:
    *   If the user enters `1`, print "Loading user profile..."
    *   If the user enters `2`, print "Opening profile editor..."
    *   If the user enters `3`, print "Exiting program. Goodbye!"
    *   If the user enters any other number (or invalid input that can't be parsed as a number), print "Invalid choice. Please select a valid option (1-3)."
5.  **Handle Input Type:** Make sure your program attempts to convert the user's input string into an integer. Use `int.tryParse()` for safer conversion, which returns `null` if the input is not a valid integer representation. Handle this `null` case appropriately (treat it as an invalid choice).

---

**Dart Solution:**

```dart
import 'dart:io'; // Import the dart:io library for input/output functions

void main() {
  // 1. Display Menu
  print("--- Main Menu ---");
  print("1: View Profile");
  print("2: Edit Profile");
  print("3: Exit");
  print("-----------------");

  // 2. Get Input Prompt
  // Use stdout.write to keep the cursor on the same line after the prompt
  stdout.write("Enter your choice (1-3): ");

  // 3. Read Input
  String? userInput = stdin.readLineSync(); // Read the line entered by the user (can be null)
  int? userChoice; // Declare a nullable integer variable for the choice

  // Safely try to parse the input string into an integer
  if (userInput != null) {
    userChoice = int.tryParse(userInput); // Returns null if parsing fails
  }

  // 4. Process Choice using a switch statement
  // First check if parsing was successful (userChoice is not null)
  if (userChoice == null) {
    // Handle cases where input was not a number (tryParse returned null)
    print("\nInvalid input. Please enter a number (1-3).");
  } else {
    // If parsing was successful, use the switch statement on the integer choice
    print(""); // Add a newline for better formatting before the result
    switch (userChoice) {
      case 1:
        print("Loading user profile...");
        break; // Important: exits the switch statement
      case 2:
        print("Opening profile editor...");
        break; // Important: exits the switch statement
      case 3:
        print("Exiting program. Goodbye!");
        break; // Important: exits the switch statement
      default:
        // This case handles any integer that isn't 1, 2, or 3
        print("Invalid choice number. Please select a valid option (1-3).");
        // 'break;' is optional for the default case if it's the last one,
        // but it's good practice to include it.
        break;
    }
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: This line imports the necessary library for handling standard input (`stdin`) and standard output (`stdout`).
2.  **`print(...)`**: Displays the menu options.
3.  **`stdout.write(...)`**: Prints the prompt without adding a newline character, so the user types their input on the same line.
4.  **`stdin.readLineSync()`**: Reads the full line of text entered by the user until they press Enter. It returns the input as a `String?` (nullable String) because input could potentially fail or be empty.
5.  **`int.tryParse(userInput)`**: Attempts to convert the `userInput` string into an integer. If successful, it returns the integer; otherwise, it returns `null`. This is safer than `int.parse()`, which would throw an error if the input isn't a valid number.
6.  **`if (userChoice == null)`**: Checks if the parsing failed. If so, it prints an error message for non-numeric input.
7.  **`else { switch (userChoice) {...} }`**: If parsing was successful (`userChoice` holds an integer), the `switch` statement is executed.
8.  **`case X:`**: Each `case` checks if `userChoice` matches the specified value (`1`, `2`, or `3`).
9.  **`print(...)`**: Inside each case, the corresponding message is printed.
10. **`break;`**: This statement is crucial. It exits the `switch` statement after a matching `case` block is executed, preventing "fall-through" to the next case.
11. **`default:`**: If `userChoice` doesn't match any of the preceding `case` values (e.g., the user entered `0`, `4`, or `-1`), the `default` block is executed, printing the invalid choice message.