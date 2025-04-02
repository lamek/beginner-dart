Okay, here is a beginner Dart problem focused on functions, parameters, and return values, using the password generator theme.

---

## Dart Programming Problem: Simple Password Generator

**Objective:**

Write a Dart function that generates a random password based on specified criteria. This exercise focuses on defining functions, passing parameters, and returning values.

**Problem Description:**

Create a Dart function named `generatePassword` that takes the following parameters:

1.  `length`: An `int` specifying the desired length of the password.
2.  `includeUppercase`: A `bool` indicating whether to include uppercase letters (A-Z).
3.  `includeNumbers`: A `bool` indicating whether to include numbers (0-9).
4.  `includeSpecialChars`: A `bool` indicating whether to include special characters (e.g., `!@#$%^&*()`).

The function should:

*   Always include lowercase letters (a-z) in the pool of possible characters.
*   Conditionally add uppercase letters, numbers, and/or special characters to the pool based on the boolean parameters.
*   Randomly select characters from the combined pool until the password reaches the specified `length`.
*   Return the generated password as a `String`.

**Requirements:**

*   Use the `dart:math` library for random number generation.
*   Define the `generatePassword` function with the specified parameters and return type.
*   Implement the logic to build the character set and generate the password.
*   Include a `main` function to demonstrate calling `generatePassword` with different options and printing the results.

**Example Character Sets:**

*   Lowercase: `abcdefghijklmnopqrstuvwxyz`
*   Uppercase: `ABCDEFGHIJKLMNOPQRSTUVWXYZ`
*   Numbers: `0123456789`
*   Special Characters: `!@#$%^&*()_+-=[]{}|;':",.<>/?~` (You can choose a subset if you prefer)

---

## Dart Solution Code

```dart
import 'dart:math'; // Import the math library for Random

// Define the character sets
const String lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
const String uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String numberChars = '0123456789';
const String specialChars = '!@#%^&*()_+-=[]{}|;:\'",.<>/?~';

/// Generates a random password based on specified criteria.
///
/// Parameters:
///   [length]: The desired length of the password.
///   [includeUppercase]: Whether to include uppercase letters (defaults to true).
///   [includeNumbers]: Whether to include numbers (defaults to true).
///   [includeSpecialChars]: Whether to include special characters (defaults to true).
///
/// Returns:
///   A randomly generated password string.
String generatePassword(
  int length, {
  bool includeUppercase = true,
  bool includeNumbers = true,
  bool includeSpecialChars = true,
}) {
  // Start with lowercase letters (always included)
  String allowedChars = lowercaseChars;

  // Add other character types based on flags
  if (includeUppercase) {
    allowedChars += uppercaseChars;
  }
  if (includeNumbers) {
    allowedChars += numberChars;
  }
  if (includeSpecialChars) {
    allowedChars += specialChars;
  }

  // Ensure length is non-negative
  if (length <= 0) {
    return ''; // Return empty string for invalid length
  }

  // Ensure there are characters to choose from (lowercase is always there, so safe here)
  if (allowedChars.isEmpty) {
     // This case shouldn't happen with current logic but good practice
     return '';
  }


  // Create a random number generator
  Random random = Random();

  // Generate the password string
  String password = '';
  for (int i = 0; i < length; i++) {
    // Pick a random index within the allowed characters string
    int randomIndex = random.nextInt(allowedChars.length);
    // Append the character at the random index to the password
    password += allowedChars[randomIndex];
  }

  return password;
}

// Main function to demonstrate the password generator
void main() {
  print("--- Password Generator Demo ---");

  // Example 1: Default settings (all included), length 12
  String pass1 = generatePassword(12);
  print("Password 1 (Length 12, All Chars): $pass1");

  // Example 2: Length 8, no special characters
  String pass2 = generatePassword(8, includeSpecialChars: false);
  print("Password 2 (Length 8, No Special): $pass2");

  // Example 3: Length 10, only lowercase and numbers
  String pass3 = generatePassword(10, includeUppercase: false, includeSpecialChars: false);
  print("Password 3 (Length 10, Lower & Num): $pass3");

  // Example 4: Length 6, only lowercase
  String pass4 = generatePassword(6, includeUppercase: false, includeNumbers: false, includeSpecialChars: false);
  print("Password 4 (Length 6, Only Lower): $pass4");

  // Example 5: Edge case - Length 0
  String pass5 = generatePassword(0);
  print("Password 5 (Length 0): $pass5");
}
```

---