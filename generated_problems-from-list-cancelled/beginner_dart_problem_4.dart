Okay, here is a beginner Dart problem focusing on Maps and Strings, along with its solution.

---

## Problem Description: Simple Contact Book

**Goal:** Create a simple contact book application using Dart.

**Requirements:**

1.  You need to store contacts using a `Map`. The keys of the map should be the contact names (as `String`s), and the values should be their corresponding phone numbers (also as `String`s).
2.  Declare a `Map` variable named `contactBook` with the type `Map<String, String>`.
3.  Add at least three contacts to the `contactBook`. For example:
    *   Alice: "123-456-7890"
    *   Bob: "987-654-3210"
    *   Charlie: "555-123-4567"
4.  Retrieve the phone number associated with the contact named "Bob" and print it to the console in a user-friendly format (e.g., "Bob's phone number is: 987-654-3210").
5.  Print the entire `contactBook` map to the console to display all stored contacts.

**Concepts Tested:**
*   Variable declaration
*   `Map` data type
*   `String` data type
*   Adding key-value pairs to a Map
*   Retrieving values from a Map using a key
*   Using `print()` for output

---

## Solution

```dart
void main() {
  // 1. Declare a Map variable named contactBook
  // Keys are Strings (names), values are Strings (phone numbers)
  Map<String, String> contactBook = {};

  // 2. Add at least three contacts to the contactBook
  print("--- Adding Contacts ---");
  contactBook['Alice'] = '123-456-7890';
  contactBook['Bob'] = '987-654-3210';
  contactBook['Charlie'] = '555-123-4567';
  print("Contacts added successfully.");

  // You could also initialize the map with values directly:
  // Map<String, String> contactBook = {
  //   'Alice': '123-456-7890',
  //   'Bob': '987-654-3210',
  //   'Charlie': '555-123-4567'
  // };

  // 3. Retrieve and print the phone number for "Bob"
  print("\n--- Retrieving Specific Contact ---");
  String? bobsNumber = contactBook['Bob']; // Using [] retrieves the value for the key 'Bob'
                                        // It returns String? (nullable String) because 'Bob' might not exist

  // Check if Bob's number was found before printing
  if (bobsNumber != null) {
    print("Bob's phone number is: $bobsNumber");
  } else {
    print("Bob not found in the contact book.");
  }

  // 4. Print the entire contactBook
  print("\n--- Full Contact Book ---");
  print(contactBook);
}
```

---