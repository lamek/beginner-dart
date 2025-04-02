Okay, here is a beginner Dart problem focused on variables and basic data types, along with its solution.

---

**Problem Description: Personal Info Formatter**

**Objective:**
Write a Dart program that asks the user for several pieces of personal information, stores this information in variables of appropriate data types, and then prints a formatted summary string to the console.

**Requirements:**
1.  **Import necessary libraries:** You'll need `dart:io` for console input/output.
2.  **Get User Input:** Prompt the user to enter the following information:
    *   Their full name (e.g., "Ada Lovelace")
    *   Their age (e.g., 30)
    *   Their favorite number (e.g., 42)
    *   Their height in meters (e.g., 1.75)
    *   If they enjoy programming (yes/no)
    *   A few of their hobbies, separated by commas (e.g., "reading, coding, hiking")
3.  **Store Data:** Store the collected information using the most appropriate Dart data types:
    *   Name: `String`
    *   Age: `int`
    *   Favorite Number: `int`
    *   Height: `double`
    *   Enjoys Programming: `bool` (true if they answered 'yes', case-insensitive)
    *   Hobbies: `List<String>`
4.  **Demonstrate Map (Optional but Good Practice):** Store all the collected information within a `Map` where keys are strings describing the data (e.g., 'name', 'age') and values are the variables you created.
5.  **Formatted Output:** Print a single, well-formatted multi-line string to the console summarizing all the gathered information. Use string interpolation.

**Example Interaction:**

```
Enter your full name: Grace Hopper
Enter your age: 85
Enter your favorite number: 10
Enter your height in meters: 1.68
Do you enjoy programming? (yes/no): yes
Enter a few hobbies (comma-separated): inventing, teaching, debugging

--- Personal Information Summary ---
Name: Grace Hopper
Age: 85 years old
Favorite Number: 10
Height: 1.68 meters
Enjoys Programming: true
Hobbies: [inventing, teaching, debugging]
------------------------------------
(Optional) Info Map: {name: Grace Hopper, age: 85, favoriteNumber: 10, height: 1.68, enjoysProgramming: true, hobbies: [inventing, teaching, debugging]}
```

---

**Solution Code:**

```dart
import 'dart:io';

void main() {
  // 1. Get User Input & 3. Store Data (with type conversion)

  // Name (String)
  stdout.write("Enter your full name: ");
  String name = stdin.readLineSync()!; // Read as String

  // Age (int)
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!); // Read as String, parse to int

  // Favorite Number (int)
  stdout.write("Enter your favorite number: ");
  int favoriteNumber = int.parse(stdin.readLineSync()!); // Read as String, parse to int

  // Height (double)
  stdout.write("Enter your height in meters: ");
  double height = double.parse(stdin.readLineSync()!); // Read as String, parse to double

  // Enjoys Programming (bool)
  stdout.write("Do you enjoy programming? (yes/no): ");
  String programmingResponse = stdin.readLineSync()!.toLowerCase(); // Read as String, convert to lower case
  bool enjoysProgramming = (programmingResponse == 'yes' || programmingResponse == 'y'); // Check for 'yes' or 'y'

  // Hobbies (List<String>)
  stdout.write("Enter a few hobbies (comma-separated): ");
  String hobbiesInput = stdin.readLineSync()!;
  // Split the string by comma, trim whitespace from each item, and create a List
  List<String> hobbies = hobbiesInput.split(',').map((hobby) => hobby.trim()).toList();

  // 4. Demonstrate Map (Optional)
  Map<String, dynamic> personalInfoMap = {
    'name': name,
    'age': age,
    'favoriteNumber': favoriteNumber,
    'height': height,
    'enjoysProgramming': enjoysProgramming,
    'hobbies': hobbies,
  };


  // 5. Formatted Output
  print("\n--- Personal Information Summary ---");
  print("Name: $name");
  print("Age: $age years old");
  print("Favorite Number: $favoriteNumber");
  print("Height: $height meters");
  print("Enjoys Programming: $enjoysProgramming");
  print("Hobbies: $hobbies"); // Directly prints the list representation
  print("------------------------------------");

  // Optional: Print the map as well
  print("(Optional) Info Map: $personalInfoMap");
}
```