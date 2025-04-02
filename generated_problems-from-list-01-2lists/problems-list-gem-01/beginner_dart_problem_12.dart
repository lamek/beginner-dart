Okay, here is a beginner Dart problem focused on control flow, specifically implementing a simple number guessing game using a `while` loop and `if-else` statements.

---

**Problem Description: Simple Number Guessing Game**

**Objective:**
Write a Dart program that simulates a simple number guessing game.

**Requirements:**

1.  **Generate Secret Number:** At the start of the program, generate a random integer between 1 and 10 (inclusive). This will be the secret number the user needs to guess.
2.  **User Input Loop:** Use a `while` loop to continuously prompt the user to enter their guess.
3.  **Read Guess:** Read the integer entered by the user. You should handle potential non-numeric input gracefully (e.g., by telling the user it's invalid and asking again).
4.  **Compare and Feedback:** Inside the loop, compare the user's guess to the secret number:
    *   If the guess is less than the secret number, print "Too low!".
    *   If the guess is greater than the secret number, print "Too high!".
    *   If the guess is equal to the secret number, print "Correct! You guessed the number." and exit the loop.
5.  **Loop Termination:** The `while` loop should only terminate when the user guesses the correct number.

**Focus:** This exercise emphasizes using `while` loops for indefinite repetition, `if-else if-else` statements for conditional logic, basic console input/output (`dart:io`), and random number generation (`dart:math`).

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Required for input/output (stdin, stdout)
import 'dart:math'; // Required for random number generation (Random)

void main() {
  // 1. Generate Secret Number
  final random = Random();
  // nextInt(10) generates 0-9, so add 1 for the range 1-10
  final int secretNumber = random.nextInt(10) + 1; 

  int? guess; // Use nullable int to store the user's guess

  print("--- Welcome to the Number Guessing Game! ---");
  print("I have selected a secret number between 1 and 10.");

  // 2. User Input Loop (continues as long as guess is not the secret number)
  while (guess != secretNumber) {
    // Prompt user for input
    stdout.write("Enter your guess: "); // stdout.write keeps cursor on the same line
    
    // 3. Read Guess and handle potential errors
    String? input = stdin.readLineSync(); // Read line from console
    
    if (input == null) {
      print("Input error. Please try again.");
      continue; // Skip the rest of the loop and ask again
    }

    // Try to parse the input string into an integer
    guess = int.tryParse(input); 

    if (guess == null) {
      print("Invalid input. Please enter a number.");
      // Keep guess as null or some invalid value so the loop continues correctly
      // No need to explicitly set guess here as it's already null from tryParse failure
      continue; // Skip the rest of the loop and ask again
    }

    // 4. Compare and Feedback
    if (guess < secretNumber) {
      print("Too low!");
    } else if (guess > secretNumber) {
      print("Too high!");
    } 
    // No 'else' needed here because if guess == secretNumber,
    // the while loop condition (guess != secretNumber) will become false
    // and the loop will terminate naturally.
  }

  // 5. Loop Termination - Runs only after the loop exits (correct guess)
  print("Correct! The secret number was $secretNumber.");
  print("--- Game Over ---");
}
```

**Explanation:**

1.  **Imports:** `dart:io` for console interaction and `dart:math` for `Random`.
2.  **Secret Number:** `Random().nextInt(10)` gives a number from 0 to 9. Adding 1 shifts the range to 1 to 10. `final` means `secretNumber` cannot be reassigned after initialization.
3.  **Guess Variable:** `int? guess;` declares a nullable integer variable `guess`. It starts as `null`.
4.  **While Loop:** `while (guess != secretNumber)` ensures the loop runs as long as the `guess` is not equal to the `secretNumber`. Initially, `guess` is `null`, so the condition is true.
5.  **Input Prompt:** `stdout.write` prompts the user without adding a newline character.
6.  **Read Input:** `stdin.readLineSync()` reads the text the user types until they press Enter. It returns a `String?` (nullable string).
7.  **Input Parsing:** `int.tryParse(input)` attempts to convert the input string to an integer. If successful, it returns the `int`; otherwise, it returns `null`. This is safer than `int.parse()` which would throw an exception on invalid input.
8.  **Input Validation:** We check if `guess` became `null` after `tryParse`. If so, it means the input wasn't a valid number, we inform the user, and use `continue` to jump to the next iteration of the `while` loop, asking for input again.
9.  **Comparison:** Inside the loop, after successfully parsing a number, `if-else if` statements compare the valid `guess` to the `secretNumber` and provide feedback.
10. **Loop Exit & Final Message:** When the user enters the correct number, `guess` becomes equal to `secretNumber`. The `while` loop's condition (`guess != secretNumber`) becomes false, and the loop terminates. The line after the loop then executes, printing the success message.