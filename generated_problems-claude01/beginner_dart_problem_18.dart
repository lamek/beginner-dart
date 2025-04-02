Okay, here is a beginner Dart problem focused on functions, parameters, and return values, using string transformation as the theme.

---

**Problem Description**

**Title:** Uppercase Converter Function

**Goal:**
Write a Dart function that takes a single string as input and returns a new string with all characters converted to uppercase.

**Requirements:**

1.  Define a function named `convertToUppercase`.
2.  This function must accept one parameter: a `String`.
3.  This function must return a `String`.
4.  The returned string should be the uppercase version of the input string.
5.  Create a `main` function.
6.  Inside the `main` function, call your `convertToUppercase` function with a sample string (e.g., "hello dart!").
7.  Print the original string and the transformed string returned by your function to the console.

**Example Interaction:**

If you call `convertToUppercase("hello world")`, it should return `"HELLO WORLD"`.

Your `main` function's output might look something like this:

```
Original: hello dart!
Uppercase: HELLO DART!
```

---

**Solution Code**

```dart
// Function definition:
// Takes one String parameter named 'inputString'
// Returns a String
String convertToUppercase(String inputString) {
  // Use the built-in .toUpperCase() method of the String class
  // to convert the input string to uppercase.
  String uppercaseString = inputString.toUpperCase();

  // Return the transformed string.
  return uppercaseString;
}

// Main function - the entry point of the program
void main() {
  // 1. Define a sample string variable.
  String originalText = "hello dart!";

  // 2. Call the convertToUppercase function, passing the sample string.
  //    Store the returned (uppercase) string in a new variable.
  String transformedText = convertToUppercase(originalText);

  // 3. Print the original and transformed strings to the console.
  print("Original: $originalText");
  print("Uppercase: $transformedText");

  // Example with another string
  String anotherExample = "Programming is fun.";
  print("\nOriginal: $anotherExample"); // \n adds a newline for better separation
  print("Uppercase: ${convertToUppercase(anotherExample)}"); // Call function directly inside print
}
```

---