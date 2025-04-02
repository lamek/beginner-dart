Okay, here is a beginner Dart problem based on your description, focusing on control flow elements like `while` loops and `if-else` statements.

---

**Dart Programming Problem: Simple Number Guessing Game**

**Objective:**

Write a Dart program that implements a simple number guessing game.

**Requirements:**

1.  **Generate a Secret Number:** At the start of the program, generate a random integer between 1 and 10 (inclusive). This will be the secret number the user needs to guess.
2.  **Get User Input:** Repeatedly prompt the user to enter their guess.
3.  **Use a `while` loop:** The prompting and checking should continue as long as the user's guess is not equal to the secret number.
4.  **Provide Feedback:**
    *   If the guess is lower than the secret number, print "Too low. Try again.".
    *   If the guess is higher than the secret number, print "Too high. Try again.".
    *   If the guess is correct, print "Correct! The secret number was [secret number]." and terminate the loop (and the program).
5.  **Input Handling:** Assume the user will enter valid integer numbers for this basic version. (More advanced versions could add error handling for non-numeric input).

**Concepts to Practice:**

*   Variable declaration and assignment (`int`, `final`)
*   Generating random numbers (`dart:math`)
*   Reading user input (`dart:io`)
*   Type conversion (String to int)
*   `while` loops for repetition
*   `if-else if-else` statements for conditional logic
*   Comparison operators (`<`, `>`, `==`, `!=`)
*   Basic console output (`print`, `stdout.write`)

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Required for input/output (stdin, stdout, print)
import 'dart:math'; // Required for generating random numbers (Random)

void main() {
  // 1. Generate the secret number
  final random = Random();
  // nextInt(10) generates 0-9, so add 1 for the 1-10 range
  final int secretNumber = random.nextInt(10) + 1;

  int? currentGuess = null; // Use nullable int for the guess, initially null

  print('--- Welcome to the Number Guessing Game ---');
  print('I\'ve picked a number between 1 and 10. Try to guess it!');

  // 3. Use a while loop to keep guessing until correct
  while (currentGuess != secretNumber) {
    // 2. Get User Input
    stdout.write('Enter your guess: '); // Use stdout.write to keep input on the same line
    String? input = stdin.readLineSync(); // Read input as a string

    // Basic input check and conversion
    if (input != null && input.isNotEmpty) {
      try {
        currentGuess = int.parse(input); // Convert string input to integer

        // 4. Provide Feedback using if-else if-else
        if (currentGuess < secretNumber) {
          print('Too low. Try again.');
        } else if (currentGuess > secretNumber) {
          print('Too high. Try again.');
        } else {
          // This else block is reached only when currentGuess == secretNumber
          print('Correct! The secret number was $secretNumber.');
          // The loop condition (currentGuess != secretNumber) will now be false,
          // so the loop will terminate after this iteration.
        }
      } catch (e) {
        // Handle cases where input is not a valid number
        print('Invalid input. Please enter a whole number.');
        // Keep currentGuess as null or its previous value so the loop continues
      }
    } else {
      print('No input received. Please try again.');
      // Keep currentGuess as null or its previous value so the loop continues
    }
  } // End of while loop

  print('--- Game Over ---');
}
```

**Explanation:**

1.  **Imports:** `dart:io` for console interaction and `dart:math` for `Random`.
2.  **Secret Number:** `Random().nextInt(10) + 1` creates a random integer from 1 to 10.
3.  **Guess Variable:** `currentGuess` is declared as a nullable integer (`int?`) and initialized to `null`. This ensures the `while` loop condition (`currentGuess != secretNumber`) is initially true and the loop runs at least once.
4.  **`while` Loop:** The loop continues as long as `currentGuess` is not equal to `secretNumber`.
5.  **Input:** `stdout.write` prompts the user without adding a newline, and `stdin.readLineSync()` reads the user's typed line as a `String?`.
6.  **Input Processing:**
    *   It checks if the input is not null or empty.
    *   A `try-catch` block handles potential errors if the user enters something that cannot be parsed into an integer (like "hello"). `int.parse()` attempts the conversion.
    *   If parsing fails, an error message is printed, and the loop continues.
7.  **Feedback:** Inside the `try` block (after successful parsing), `if-else if-else` statements compare `currentGuess` to `secretNumber` and print the appropriate feedback ("Too low", "Too high", or "Correct!").
8.  **Loop Termination:** When the guess is correct, the "Correct!" message is printed. The `while` loop condition then becomes false on the next check, and the loop terminates.
9.  **Game Over:** A final message is printed after the loop finishes.