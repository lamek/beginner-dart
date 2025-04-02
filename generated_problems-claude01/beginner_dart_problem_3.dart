Okay, here is a beginner Dart problem focusing on Maps and user input, along with demonstrations of other basic data types.

---

**Problem Description**

**Title:** Country Capital Lookup

**Objective:** Create a Dart console application that stores country-capital pairs and allows a user to look up the capital of a specific country.

**Requirements:**

1.  **Data Storage:** Use a `Map` where the keys are `String` (country names) and the values are `String` (capital names). Pre-populate this map with at least 5 country-capital pairs (e.g., 'USA': 'Washington D.C.', 'Germany': 'Berlin').
2.  **Other Data Types:** Briefly declare and print variables of type `int`, `double`, `bool`, and `List<String>` to demonstrate their usage, even if they aren't central to the main lookup logic.
3.  **User Input:** Prompt the user to enter a country name.
4.  **Lookup:** Read the user's input. Check if the entered country name exists as a key in your map.
5.  **Output:**
    *   If the country exists in the map, print its corresponding capital city in a user-friendly format (e.g., "The capital of [Country] is [Capital].").
    *   If the country does not exist in the map, print a message indicating that the country was not found (e.g., "Sorry, the country '[Country]' was not found.").
6.  **Handle Input:** Ensure you handle the potentially nullable result from reading user input (`stdin.readLineSync()`). If the input is null or empty, you can print an error message or exit gracefully.

**Hint:** You will need to import the `dart:io` library for user input. Use `Map<String, String>`, `print()`, `stdin.readLineSync()`, `containsKey()`, and `if/else` statements.

---

**Solution Code**

```dart
// Import the dart:io library for input/output operations
import 'dart:io';

void main() {
  // --- 1. Demonstrating other basic data types ---
  int currentYear = 2024;
  double appVersion = 1.0;
  bool isReleased = true;
  List<String> sampleCountries = ['USA', 'Canada', 'Mexico']; // List of Strings

  print('--- Basic Data Type Examples ---');
  print('Current Year: $currentYear (Type: int)');
  print('Application Version: $appVersion (Type: double)');
  print('Is Application Released: $isReleased (Type: bool)');
  print('Sample Countries List: $sampleCountries (Type: List<String>)');
  print('--------------------------------\n');

  // --- 2. Data Storage: Map for Country Capitals ---
  // Using a Map where keys are country names (String) and values are capitals (String)
  Map<String, String> countryCapitals = {
    'USA': 'Washington D.C.',
    'Canada': 'Ottawa',
    'Mexico': 'Mexico City',
    'France': 'Paris',
    'Germany': 'Berlin',
    'Japan': 'Tokyo',
    'India': 'New Delhi',
    'Brazil': 'Brasília'
  };

  // --- 3. User Input ---
  print('Enter a country name to find its capital:');
  // Read line from standard input. Result can be null.
  String? userInput = stdin.readLineSync();

  // --- 6. Handle Input ---
  // Check if input is null or just whitespace
  if (userInput == null || userInput.trim().isEmpty) {
    print('Invalid input. No country name entered.');
    return; // Exit the program if input is invalid
  }

  // Trim whitespace from the input for cleaner matching
  String countryName = userInput.trim();

  // --- 4. Lookup ---
  // Check if the map contains the entered country name as a key
  if (countryCapitals.containsKey(countryName)) {
    // --- 5. Output: Country Found ---
    // Retrieve the capital using the country name as the key
    // We use countryCapitals[countryName] which returns String?
    // but since we checked with containsKey, we know it's not null.
    // String interpolation handles the String? type gracefully here.
    String? capital = countryCapitals[countryName];
    print('The capital of $countryName is $capital.');
  } else {
    // --- 5. Output: Country Not Found ---
    print('Sorry, the country "$countryName" was not found in our list.');
  }
}
```

---