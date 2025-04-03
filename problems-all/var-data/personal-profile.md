---
title: Student Grade Manager
category: Variables and Data Types
difficulty: Beginner
focus:
  - Map
  - String
  - int
  - double
  - Iteration
  - Arithmetic Operations
  - Input/Output
---

# Student Grade Manager

## Problem Description

Write a Dart program to store and manage student grades. You will use a `Map` to associate student names (`String`) with their corresponding grades (`int`). After storing the grades, you need to calculate the average grade for all students and print both the individual grades and the calculated average.

## Requirements

1.  **Create a Map:** Declare a `Map` variable named `studentGrades`. The keys should be `String` (student names) and the values should be `int` (their grades).
2.  **Populate the Map:** Add at least three student entries to the map. For example:
    *   Alice: 85
    *   Bob: 92
    *   Charlie: 78
3.  **Calculate the Average Grade:**
    *   Iterate through the grades in the map.
    *   Calculate the sum of all grades.
    *   Calculate the average grade (sum of grades / number of students). Store this average in a `double` variable.
4.  **Print Output:**
    *   Print each student's name and their corresponding grade in a clear format (e.g., "Student: [Name], Grade: [Grade]").
    *   Print the calculated average grade, clearly labeled (e.g., "Average Grade: [Average]").

## Focus

This problem focuses on:

*   Declaring and initializing `Map` variables (`Map<String, int>`).
*   Using basic data types (`String`, `int`, `double`).
*   Adding entries to a `Map`.
*   Iterating over `Map` entries (e.g., using `forEach`).
*   Performing arithmetic operations to calculate sum and average.
*   Printing formatted output to the console (`print`) using string interpolation.
*   Basic conditional logic (checking for division by zero).

## Boilerplate Code

```dart
void main() {
  // 1. Create and 2. Populate the Map

  // 3. Set variables for calculation

  // 4. Print individual student grades and calculate sum

  // 5. Calculate the Average Grade

  // 6. Print the Average Grade
}
```