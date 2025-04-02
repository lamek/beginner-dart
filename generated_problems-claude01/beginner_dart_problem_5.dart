Okay, here is a beginner Dart problem focusing on Maps and Lists, with context provided for other basic data types.

---

**Problem Description**

**Topic:** Variables and Data Types (Map, List, String)

**Goal:** Create a simple weekly schedule using a Dart `Map`.

**Scenario:**
You need to organize your activities for the upcoming week. You decide to use a Dart program to store this information. While Dart supports various data types like `int` (integers, e.g., `10`), `double` (decimal numbers, e.g., `3.14`), `String` (text, e.g., `"Hello"`), and `bool` (true/false), this specific task focuses on using a `Map` and `List`.

**Your Task:**

1.  **Declare a `Map`:** Create a variable named `weeklySchedule`. This map should have keys of type `String` (representing the days of the week) and values of type `List<String>` (representing the list of activities planned for that day).
2.  **Populate the Map:** Add entries to the `weeklySchedule` map for at least three different days (e.g., "Monday", "Wednesday", "Friday"). For each day, provide a list containing 2-3 activities as strings (e.g., `['Morning Jog', 'Team Meeting', 'Code Practice']`).
3.  **Print the Schedule:** Print the entire `weeklySchedule` map to the console to see the overall structure.
4.  **Access and Print Specific Day:** Access the list of activities specifically for "Wednesday" from the map and print only that list to the console. If Wednesday doesn't exist, print a message indicating that.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Declare a Map with String keys and List<String> values.
  // We initialize it directly with some data.
  Map<String, List<String>> weeklySchedule = {
    // 2. Populate the Map with entries for different days and their activities.
    'Monday': ['Wake up early', 'Client Meeting at 10 AM', 'Gym Session'],
    'Wednesday': ['Dart Programming Practice', 'Read Chapter 5', 'Prepare Presentation'],
    'Friday': ['Project Deployment', 'Team Lunch', 'Review Weekly Progress']
  };

  // 3. Print the entire schedule map.
  print("--- Full Weekly Schedule ---");
  print(weeklySchedule);
  print("\n"); // Add a newline for better readability

  // 4. Access and print activities specifically for Wednesday.
  print("--- Activities for Wednesday ---");

  // Use the key 'Wednesday' to access the list.
  // We use the null-aware operator '??' to provide a default list
  // (in this case, an empty list indicating no activities) if the key doesn't exist.
  // A more descriptive message could also be used instead of an empty list.
  List<String> wednesdayActivities = weeklySchedule['Wednesday'] ?? [];

  // Check if the list is empty (meaning Wednesday wasn't found or had no activities)
  if (wednesdayActivities.isNotEmpty) {
    // Print each activity for Wednesday
    for (String activity in wednesdayActivities) {
      print("- $activity");
    }
  } else {
    print("No activities planned or day not found for Wednesday.");
  }

  // Example of accessing a non-existent day
  print("\n--- Activities for Sunday ---");
  List<String> sundayActivities = weeklySchedule['Sunday'] ?? [];
   if (sundayActivities.isNotEmpty) {
    for (String activity in sundayActivities) {
      print("- $activity");
    }
  } else {
    print("No activities planned or day not found for Sunday.");
  }
}
```

---