Okay, here is a beginner Dart problem focused on Maps and Strings, based on your description.

## Problem Description

**Topic:** Variables and Data Types (Focus: `Map`, `String`)

**Goal:** Create a very simple digital contact book using a Dart `Map`.

**Tasks:**

1.  **Declare a Variable:** Create a variable named `contactBook`. This variable should hold a `Map`. The keys of the map should be `String` (representing contact names) and the values should also be `String` (representing phone numbers).
2.  **Add Contacts:** Add at least three contacts (name and phone number pairs) to your `contactBook` map.
    *   Example Contact 1: Name "Alice", Phone "555-1234"
    *   Example Contact 2: Name "Bob", Phone "555-5678"
    *   Example Contact 3: Name "Charlie", Phone "555-9999"
3.  **Retrieve a Contact:** Access and retrieve the phone number for one specific contact (e.g., "Bob") from the `contactBook` map. Store this phone number in a new `String` variable.
4.  **Print Specific Contact:** Print the retrieved phone number to the console with a descriptive message (e.g., "Bob's phone number is: [phone number]").
5.  **Print All Contacts:** Print the entire `contactBook` map to the console to show all stored contacts.

## Solution Code

```dart
void main() {
  // 1. Declare a Variable for the contact book (Map<String, String>)
  Map<String, String> contactBook = {}; // Using a map literal to create an empty map

  // 2. Add Contacts
  contactBook['Alice'] = '555-1234';
  contactBook['Bob'] = '555-5678';
  contactBook['Charlie'] = '555-9999';

  print('Contacts added.');

  // 3. Retrieve a Specific Contact's Number
  // We'll retrieve Bob's number. Using String? because map lookup can return null if the key doesn't exist.
  String? bobPhoneNumber = contactBook['Bob'];

  // 4. Print Specific Contact's Number
  // Check if the number was actually found before printing
  if (bobPhoneNumber != null) {
    print("\nRetrieving Bob's number...");
    print("Bob's phone number is: $bobPhoneNumber");
  } else {
    print("\nBob was not found in the contact book.");
  }

  // 5. Print All Contacts
  print("\n--- Complete Contact Book ---");
  print(contactBook);

  // You can also iterate and print nicely (Optional demonstration):
  print("\n--- Formatted Contact Book ---");
  contactBook.forEach((name, number) {
    print("$name: $number");
  });
}
```