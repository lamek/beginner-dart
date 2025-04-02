Okay, here is a beginner Dart problem focusing on Maps, along with its solution.

---

**Problem Description**

**Topic:** Variables and Data Types (Map, String, int)

**Problem: Student Score Map**

Your task is to create a simple system to store and retrieve student scores using a Dart `Map`.

1.  **Declare a Map:** Create a variable named `studentScores`. This map should be designed to hold student names (as `String` keys) and their corresponding scores (as `int` values).
2.  **Add Data:** Add the following three students and their scores to the `studentScores` map:
    *   "Alice": 85
    *   "Bob": 92
    *   "Charlie": 78
3.  **Retrieve Specific Score:** Access the map to find the score for the student named "Bob". Print *only* Bob's score to the console, preceded by a descriptive label (e.g., "Bob's score: ").
4.  **Print Entire Map:** Print the entire `studentScores` map to the console to show all stored student names and scores, preceded by a descriptive label (e.g., "All student scores: ").

---

**Solution Code**

```dart
void main() {
  // 1. Declare a Map<String, int> and initialize it with student data
  Map<String, int> studentScores = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78, // Trailing comma is allowed and good practice in Dart collections
  };

  // 2. Data is already added during initialization.

  // 3. Retrieve and print the score for "Bob"
  // Accessing the value using the key 'Bob'.
  // We assume 'Bob' exists based on the problem description.
  int? bobsScore = studentScores['Bob']; // Accessing map value returns a nullable type (int?)
                                        // because the key might not exist.

  print("Retrieving Bob's score...");
  // Using string interpolation to print the result.
  // If bobsScore were null (e.g., if 'Bob' wasn't in the map), this would print "null".
  print("Bob's score: ${bobsScore}");
  // Or, assuming Bob definitely exists: print("Bob's score: ${studentScores['Bob']}");

  print(''); // Print a blank line for better output separation

  // 4. Print the entire map
  print("Printing the entire map...");
  // Printing the map directly uses its default toString() representation.
  print("All student scores: ${studentScores}");
}
```

---