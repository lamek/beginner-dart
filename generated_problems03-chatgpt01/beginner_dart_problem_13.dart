Okay, here is a beginner Dart problem focusing on the `switch` statement for control flow, along with its solution.

---

## Problem Description: Days of the Week Message

**Goal:** Write a Dart program that determines the name of the day based on a given integer number (1 through 7) and prints a corresponding message.

**Details:**

1.  Create an integer variable named `dayNumber`. Assign it a value between 1 and 7 (you can change this value to test different days).
2.  Use a `switch` statement to check the value of `dayNumber`.
3.  Based on the value of `dayNumber`:
    *   If it's 1, print "It's Monday!".
    *   If it's 2, print "It's Tuesday!".
    *   If it's 3, print "It's Wednesday!".
    *   If it's 4, print "It's Thursday!".
    *   If it's 5, print "It's Friday!".
    *   If it's 6, print "It's Saturday!".
    *   If it's 7, print "It's Sunday!".
4.  Include a `default` case in your `switch` statement to handle any numbers outside the 1-7 range. If the number is invalid, print "Invalid day number. Please enter a number between 1 and 7."

---

## Dart Solution

```dart
void main() {
  // 1. Declare and initialize the day number variable.
  //    Try changing this value (e.g., 1, 5, 7, 0, 8) to test the code.
  int dayNumber = 4; 

  // Variable to hold the message to be printed
  String message;

  // 2. Use a switch statement to check the dayNumber.
  switch (dayNumber) {
    case 1:
      message = "It's Monday!"; // 3. Assign message for Monday
      break; // Exit the switch statement
    case 2:
      message = "It's Tuesday!"; // 3. Assign message for Tuesday
      break;
    case 3:
      message = "It's Wednesday!"; // 3. Assign message for Wednesday
      break;
    case 4:
      message = "It's Thursday!"; // 3. Assign message for Thursday
      break;
    case 5:
      message = "It's Friday!"; // 3. Assign message for Friday
      break;
    case 6:
      message = "It's Saturday!"; // 3. Assign message for Saturday
      break;
    case 7:
      message = "It's Sunday!"; // 3. Assign message for Sunday
      break;
    default: // 4. Handle invalid numbers
      message = "Invalid day number. Please enter a number between 1 and 7.";
      break; // Good practice to include break even in default
  }

  // Print the final message
  print(message); 
}
```

---