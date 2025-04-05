## Solution: Problem 3 - Combining and Inspecting Strings

```dart
void main() {
  // 1. Declare firstName and lastName variables
  String firstName = "Ada";
  String lastName = "Lovelace";

  // 2. Concatenate to create the fullName variable
  String fullName = firstName + " " + lastName;

  // 3. Get the length of the fullName
  int nameLength = fullName.length;

  // 4. Print the fullName
  print(fullName);

  // 5. Print the formatted length message
  print("Full name length: $nameLength");
}
```