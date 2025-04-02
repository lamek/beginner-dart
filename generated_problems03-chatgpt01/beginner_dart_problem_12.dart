Okay, here is a beginner Dart problem focused on control flow, specifically using a `while` loop and `if-else` for input validation, along with the solution.

---

**Problem Description: Guess the Number**

**Goal:** Write a Dart program that simulates a simple "Guess the Number" game.

**Requirements:**

1.  **Generate a Secret Number:** At the start of the program, generate a random integer between 1 and 10 (inclusive). Store this as the "secret number".
2.  **Prompt the User:** Ask the user to enter their guess for the secret number.
3.  **Loop for Guesses:** Use a `while` loop to continuously prompt the user for a guess *until* their guess matches the secret number.
4.  **Input Handling:**
    *   Read the user's input from the console.
    *   Try to convert the input string to an integer.
    *   If the input is not a valid number, print an error message (e.g., "Invalid input. Please enter a number.") and ask for input again (continue the loop).
5.  **Check the Guess:** Inside the loop (after getting a valid number), check if the user's guess matches the secret number. The loop should only terminate when the guess is correct.
6.  **Success Message:** Once the user guesses the correct number, print a success message (e.g., "Correct! You guessed the number: [secret number]") and the program should end.

**Hint:** You will need to use `dart:math` for random number generation and `dart:io` for reading user input. Remember that `stdin.readLineSync()` reads a `String?`, and you'll need to handle potential `null` values and use `int.tryParse()` for safe conversion.

---

**Solution Code:**

```dart
import 'dart:io';
import 'dart:math';

void main() {
  // 1. Generate a Secret Number (1 to 10 inclusive)
  final random = Random();
  final secretNumber = random.nextInt(10) + 1; // nextInt(10) gives 0-9, so add 1

  int? userGuess; // Use nullable int to store the user's guess

  print("--- Guess the Number Game ---");
  print("I have picked a number between 1 and 10.");
  // print("DEBUG: The secret number is $secretNumber"); // Uncomment for testing

  // 3. Loop for Guesses (continues as long as the guess is not the secret number)
  while (userGuess != secretNumber) {
    // 2. Prompt the User
    stdout.write("Enter your guess: "); // Use stdout.write to keep input on the same line

    // 4. Input Handling
    final inputString = stdin.readLineSync();

    if (inputString == null) {
      // Handle cases where input stream might close unexpectedly
      print("\nInput stream closed. Exiting.");
      return; // Exit the program
    }

    // Try to convert the input string to an integer
    final guessAttempt = int.tryParse(inputString);

    if (guessAttempt == null) {
      // Input was not a valid number
      print("Invalid input. Please enter a whole number between 1 and 10.");
      // The loop will continue automatically
    } else {
      // Input was a valid number, assign it to userGuess
      userGuess = guessAttempt;

      // 5. Check the Guess (implicitly handled by the while loop condition)
      // Optional: Add feedback if the guess is wrong (but not required by the problem)
      // if (userGuess != secretNumber) {
      //   print("Incorrect guess. Try again.");
      // }
    }
  } // End of while loop (condition userGuess != secretNumber is now false)

  // 6. Success Message
  print("Correct! You guessed the number: $secretNumber");
}
```

---