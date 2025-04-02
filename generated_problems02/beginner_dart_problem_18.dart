Okay, here is a beginner Dart problem focused on functions, parameters, and return values, along with its solution.

---

**Problem Description**

**Title:** String Reverser Function

**Goal:** Create a simple Dart program that demonstrates the use of functions with parameters and return values by reversing a string.

**Requirements:**

1.  **Define a function:** Create a function named `reverseString`.
2.  **Parameter:** This function must accept one parameter: a `String` which is the text you want to reverse.
3.  **Return Value:** The function must return a `String`, which is the reversed version of the input string.
4.  **Implementation:** Inside the function, write the logic to reverse the input string.
5.  **Call the function:** In your `main` function, define a sample string (e.g., "Hello Dart").
6.  **Print the result:** Call your `reverseString` function, passing the sample string to it. Print the string returned by the function to the console.

**Example:**
If the input string is "apple", the function should return "elppa".

---

**Solution Code**

```dart
// Function definition:
// - Takes one String parameter named 'inputString'.
// - Returns a String.
String reverseString(String inputString) {
  // 1. Split the string into a list of individual characters.
  //    Example: "Hello" -> ["H", "e", "l", "l", "o"]
  List<String> characters = inputString.split('');

  // 2. Reverse the order of elements in the list.
  //    Example: ["H", "e", "l", "l", "o"] -> ["o", "l", "l", "e", "H"]
  List<String> reversedCharacters = characters.reversed.toList();
  // Note: .reversed returns an Iterable, so .toList() converts it back to a List if needed,
  // or you can directly use .join() on the Iterable.

  // 3. Join the characters in the reversed list back into a single string.
  //    Example: ["o", "l", "l", "e", "H"] -> "olleh"
  String reversedString = reversedCharacters.join('');

  // 4. Return the final reversed string.
  return reversedString;

  // --- Alternative shorter implementation using chaining ---
  // return inputString.split('').reversed.join('');
}

// Main function - the entry point of the program
void main() {
  // Define the string we want to reverse
  String originalString = "Hello Dart";

  // Call the reverseString function, passing originalString as the argument.
  // Store the returned value (the reversed string) in a new variable.
  String result = reverseString(originalString);

  // Print the original and reversed strings to the console.
  print("Original String: $originalString");
  print("Reversed String: $result");

  // Example with another string
  String anotherString = "Programming";
  print("Original String: $anotherString");
  print("Reversed String: ${reverseString(anotherString)}"); // Calling directly inside print
}
```

---