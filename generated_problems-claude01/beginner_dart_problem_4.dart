Okay, here is a beginner Dart problem focusing on variables, basic data types, and simple calculations, following your description.

---

## Problem Description

**Student Grade Calculator**

You need to write a Dart program to manage a student's grades for a few subjects.

**Tasks:**

1.  **Store Student Information:**
    *   Create a `String` variable to store the student's name (e.g., "Bob").
    *   Create a `Map` where keys are `String` (subject names like "Math", "Science", "History") and values are `int` (test scores for those subjects, e.g., 85, 90, 78).

2.  **Calculate Average Score:**
    *   Calculate the total score by summing up all the scores from the map.
    *   Calculate the average score (`double`) by dividing the total score by the number of subjects.

3.  **Determine Letter Grade:**
    *   Based on the average score, assign a `String` letter grade:
        *   90 or above: "A"
        *   80 to 89: "B"
        *   70 to 79: "C"
        *   60 to 69: "D"
        *   Below 60: "F"

4.  **Determine Passing Status:**
    *   Create a `bool` variable to indicate if the student is passing. The student is passing if their average score is 60 or above.

5.  **Display Results:**
    *   Print the student's name.
    *   Print the individual subject scores (you can print the map directly or iterate through it).
    *   Print the calculated average score (formatted to two decimal places).
    *   Print the assigned letter grade.
    *   Print whether the student is passing or failing.

---

## Dart Solution

```dart
import 'dart:io'; // Not strictly needed for calculation, but good practice for potential future input
import 'dart:math'; // Not needed for this specific solution, but could be for other math ops

void main() {
  // --- 1. Store Student Information ---

  // String variable for student's name
  String studentName = "Bob";

  // Map variable for subject scores <Subject Name, Score>
  Map<String, int> subjectScores = {
    'Math': 85,
    'Science': 92,
    'History': 78,
  };

  // --- 2. Calculate Average Score ---

  // Calculate total score
  int totalScore = 0;
  // Iterate through the values (scores) in the map and add them up
  subjectScores.forEach((subject, score) {
    totalScore += score;
  });
  // Alternative way to sum scores:
  // int totalScore = subjectScores.values.reduce((sum, score) => sum + score);

  // Get the number of subjects
  int numberOfSubjects = subjectScores.length;

  // Calculate average score (use double for potential decimal values)
  // Ensure division is floating-point by making one operand a double if needed,
  // although Dart often handles int/int division resulting in double correctly.
  double averageScore = totalScore / numberOfSubjects;

  // --- 3. Determine Letter Grade ---

  // String variable for the letter grade
  String letterGrade;

  if (averageScore >= 90) {
    letterGrade = 'A';
  } else if (averageScore >= 80) {
    letterGrade = 'B';
  } else if (averageScore >= 70) {
    letterGrade = 'C';
  } else if (averageScore >= 60) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }

  // --- 4. Determine Passing Status ---

  // bool variable for passing status
  bool isPassing = averageScore >= 60;

  // --- 5. Display Results ---

  print("--- Student Grade Report ---");
  print("Student Name: $studentName");
  print("Subject Scores: $subjectScores");
  print("---------------------------");
  print("Total Score: $totalScore");
  print("Number of Subjects: $numberOfSubjects");
  // Format average score to 2 decimal places
  print("Average Score: ${averageScore.toStringAsFixed(2)}");
  print("Letter Grade: $letterGrade");
  // Use a ternary operator for concise output based on the boolean
  print("Passing Status: ${isPassing ? 'Passing' : 'Failing'}");
  print("---------------------------");

  // Example using List (as requested in data types, though less natural here)
  // You could store extra credit points in a list, for example:
  List<int> extraCreditPoints = [2, 1, 3];
  int totalExtraCredit = extraCreditPoints.fold(0, (sum, points) => sum + points);
  print("Total Extra Credit Points Awarded: $totalExtraCredit (Example of List usage)");

}
```