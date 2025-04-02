Okay, here is a beginner Dart problem focusing on control flow (specifically `if-else` and a `while` loop) for a number guessing game, along with its solution.

---

**Problem Description**

**Title:** Simple Number Guessing Game

**Objective:** Write a Dart program that simulates a number guessing game.

**Requirements:**

1.  **Generate a Secret Number:** At the start of the game, the program should generate a random integer between 1 and 100 (inclusive).
2.  **Get User Input:** Prompt the user to enter their guess.
3.  **Compare and Give Hints:**
    *   Read the user's guess.
    *   Use `if-else if-else` statements to compare the guess with the secret number.
    *   If the guess is lower than the secret number, print "Too low! Try again."
    *   If the guess is higher than the secret number, print "Too high! Try again."
    *   If the guess is correct, print a congratulatory message (e.g., "Correct! You guessed the number: [secret number]") and the game should end.
4.  **Loop Until Correct:** Use a `while` loop (or `do-while`) to allow the user to keep guessing until they guess the correct number.
5.  **Input Handling (Basic):** Assume the user enters valid integers for now. You'll need to read the input as a string and parse it into an integer.
6.  **Imports:** Remember to import necessary libraries (`dart:math` for random numbers, `dart:io` for input/output).

**Example Interaction:**

```
Welcome to the Number Guessing Game!
I have selected a random number between 1 and 100.
Try to guess it!
Enter your guess: 50
Too high! Try again.
Enter your guess: 25
Too low! Try again.
Enter your guess: 37
Too high! Try again.
Enter your guess: 31
Correct! You guessed the number: 31
```

---

**Solution Code**

```dart
import 'dart:io';   // For input/output (stdin, print)
import 'dart:math'; // For random number generation (Random)

void main() {
  // 1. Generate a Secret Number
  final random = Random();
  // nextInt(100) generates 0-99, so add 1 for 1-100 range
  int secretNumber = random.nextInt(100) + 1; 

  int? userGuess; // Use nullable int to store the guess
  bool guessedCorrectly = false;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a random number between 1 and 100.');
  print('Try to guess it!');
  
  // Uncomment the next line if you want to cheat during testing!
  // print('(Hint: The secret number is $secretNumber)'); 

  // 4. Loop Until Correct
  while (!guessedCorrectly) {
    // 2. Get User Input
    print('Enter your guess:');
    String? input = stdin.readLineSync(); // Read input as a string? (can be null)

    // Basic Input Parsing and Validation
    if (input == null) {
      print('No input received. Please try again.');
      continue; // Skip the rest of this loop iteration
    }

    // Try to convert the string input to an integer
    userGuess = int.tryParse(input); 

    if (userGuess == null) {
      print('Invalid input. Please enter a whole number.');
      continue; // Skip the rest of this loop iteration
    }

    // 3. Compare and Give Hints
    if (userGuess < secretNumber) {
      print('Too low! Try again.');
    } else if (userGuess > secretNumber) {
      print('Too high! Try again.');
    } else {
      // Correct guess!
      print('Correct! You guessed the number: $secretNumber');
      guessedCorrectly = true; // Set flag to true to exit the while loop
    }
  } // End of while loop

  print('Thanks for playing!');
}
```

---