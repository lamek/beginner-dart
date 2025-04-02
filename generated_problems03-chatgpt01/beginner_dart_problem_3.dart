Okay, here is a beginner Dart problem focusing on `Map<String, double>` for a Student Grades Tracker, along with its solution.

---

**Problem Description**

**Title:** Simple Student Grades Tracker

**Scenario:**
You need to create a very basic system to keep track of student names and their corresponding grades in a subject. The names are text (String), and the grades are numerical values that might have decimal points (double).

**Task:**

1.  **Declare a Variable:** Create a variable named `studentGrades`.
2.  **Choose Data Type:** Initialize this variable as a `Map`. The keys of the map should be `String` (representing student names) and the values should be `double` (representing their grades).
3.  **Populate the Map:** Add the following student data to your map:
    *   "Alice": 85.0
    *   "Bob": 92.5
    *   "Charlie": 77.0
    *   "Diana": 88.75
4.  **Print the Data:** Iterate through the `studentGrades` map and print each student's name and their grade to the console. The output for each student should look something like: `Student: [Name], Grade: [Grade]`.

---

**Solution Code**

```dart
void main() {
  // 1. Declare a Variable & 2. Choose Data Type (Map<String, double>)
  // 3. Populate the Map
  Map<String, double> studentGrades = {
    "Alice": 85.0,
    "Bob": 92.5,
    "Charlie": 77.0,
    "Diana": 88.75,
  };

  // Add a header for clarity
  print("--- Student Grades Report ---");

  // 4. Print the Data by iterating through the map
  // We use the forEach method which provides the key (name) and value (grade) for each entry
  studentGrades.forEach((name, grade) {
    // Print each key-value pair in the specified format
    print("Student: $name, Grade: $grade");
  });

  print("--- End of Report ---");
}
```

**Explanation:**

1.  `Map<String, double> studentGrades = { ... };`: This line declares a variable `studentGrades` and initializes it as a `Map`. The `<String, double>` part explicitly defines that keys will be `String` types and values will be `double` types. The `{}` contains the key-value pairs, where each key (like `"Alice"`) is followed by a colon `:` and its corresponding value (like `85.0`).
2.  `print("--- Student Grades Report ---");`: This is just printing a simple header to make the output clearer.
3.  `studentGrades.forEach((name, grade) { ... });`: This is a common way to iterate over a `Map` in Dart. The `forEach` method takes a function as an argument. This function receives two parameters for each entry in the map: the key (which we've named `name`) and the value (which we've named `grade`).
4.  `print("Student: $name, Grade: $grade");`: Inside the `forEach` loop, this line uses string interpolation (`$variableName`) to create the desired output string for each student, embedding the current `name` and `grade`.
5.  `void main() { ... }`: This is the entry point of every Dart program. The code inside `main` is executed when the program runs.

---