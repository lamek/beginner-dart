Okay, here is a beginner Dart problem focused on using a `switch` statement for control flow, along with its solution.

---

**Problem Description**

**Problem: Day of the Week Printer**

Write a Dart program that prompts the user to enter a number between 1 and 7, representing a day of the week (where 1 is Monday, 2 is Tuesday, ..., and 7 is Sunday).

The program should then use a `switch` statement to determine the corresponding day name based on the input number and print it to the console.

If the user enters a number outside the valid range (1-7) or enters non-numeric input, the program should print an appropriate error message.

**Requirements:**

1.  Import the `dart:io` library to handle user input.
2.  Prompt the user for input.
3.  Read the input from the console.
4.  Attempt to parse the input string into an integer. Handle potential errors if the input is not a valid number.
5.  Use a `switch` statement on the parsed integer.
6.  Include `case` statements for numbers 1 through 7, assigning the correct day name.
7.  Include a `default` case to handle numbers outside the 1-7 range.
8.  Print the resulting day name or the error message.

---

**Dart Solution**

```dart
import 'dart:io';

void main() {
  // 1. Prompt the user for input
  print('Enter a number between 1 and 7 (1=Monday, 7=Sunday):');

  // 2. Read the input from the console
  String? input = stdin.readLineSync();

  // 3. Check if input is null or empty (e.g., user just pressed Enter)
  if (input == null || input.isEmpty) {
    print('Error: No input provided.');
    return; // Exit the program
  }

  // 4. Attempt to parse the input string into an integer
  int? dayNumber = int.tryParse(input);

  // Handle cases where input was not a valid number
  if (dayNumber == null) {
    print('Error: Invalid input. Please enter a number.');
    return; // Exit the program
  }

  // Variable to hold the name of the day
  String dayName;

  // 5. Use a switch statement on the parsed integer
  switch (dayNumber) {
    case 1:
      dayName = 'Monday';
      break; // Exit the switch after this case
    case 2:
      dayName = 'Tuesday';
      break;
    case 3:
      dayName = 'Wednesday';
      break;
    case 4:
      dayName = 'Thursday';
      break;
    case 5:
      dayName = 'Friday';
      break;
    case 6:
      dayName = 'Saturday';
      break;
    case 7:
      dayName = 'Sunday';
      break;
    default:
      // 7. Handle numbers outside the 1-7 range
      dayName = 'Error: Invalid day number. Please enter a number between 1 and 7.';
      break; // Good practice to include break even in default
  }

  // 8. Print the resulting day name or the error message
  print(dayName);
}
```

---