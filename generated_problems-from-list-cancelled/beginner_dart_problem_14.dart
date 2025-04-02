Okay, here is a beginner Dart problem focusing on using a `switch` statement for a simple menu, along with its solution.

---

**Problem Description**

**Title:** Simple Menu Navigator

**Goal:** Write a Dart program that simulates a basic application menu.

**Requirements:**

1.  **Display Menu:** Print the following menu options to the console:
    ```
    --- Simple Menu ---
    1: View Profile
    2: Edit Profile
    3: Exit
    -------------------
    ```
2.  **Get Input:** Prompt the user to enter their choice (a number).
3.  **Read Input:** Read the integer entered by the user from the console.
4.  **Process Choice:** Use a `switch` statement to evaluate the user's input.
    *   If the user enters `1`, print: "Navigating to View Profile..."
    *   If the user enters `2`, print: "Navigating to Edit Profile..."
    *   If the user enters `3`, print: "Exiting application..."
    *   If the user enters any other number or invalid input, print: "Invalid choice. Please select a valid option."
5.  **Handle Non-Integer Input:** Ensure your program handles cases where the user might not enter a valid number gracefully (e.g., by printing the "Invalid choice" message).

---

**Solution Code**

```dart
import 'dart:io'; // Import the io library for input/output

void main() {
  // 1. Display Menu
  print("--- Simple Menu ---");
  print("1: View Profile");
  print("2: Edit Profile");
  print("3: Exit");
  print("-------------------");

  // 2. Get Input
  stdout.write("Enter your choice (1-3): "); // Use stdout.write to keep cursor on the same line

  // 3. Read Input
  String? userInput = stdin.readLineSync(); // Read user input as a String? (nullable)

  int? choice; // Declare a nullable integer variable for the choice

  // Try to parse the input string into an integer
  if (userInput != null) {
    choice = int.tryParse(userInput); // tryParse returns null if parsing fails
  }

  // 4. Process Choice using a switch statement
  if (choice == null) {
    // Handle cases where input was null or not a valid integer
    print("Invalid choice. Please enter a number.");
  } else {
    // Use switch statement if parsing was successful
    switch (choice) {
      case 1:
        print("Navigating to View Profile...");
        break; // Exit the switch statement
      case 2:
        print("Navigating to Edit Profile...");
        break; // Exit the switch statement
      case 3:
        print("Exiting application...");
        break; // Exit the switch statement
      default: // Handles any integer other than 1, 2, or 3
        print("Invalid choice. Please select a valid option (1, 2, or 3).");
        // No break needed for default if it's the last case, but good practice
    }
  }
}
```

---