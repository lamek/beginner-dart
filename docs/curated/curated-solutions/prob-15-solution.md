## Solution: Problem 15 - Introduction to Null Safety

```dart
void main() {
  // 1. Declare nullable middleName and non-nullable firstName
  String? middleName = "Fitzgerald";
  String firstName = "Scott";

  // 2. Print initial values
  print('First Name: $firstName');
  print('Middle Name: $middleName');

  // 3. Safely access length of middleName (when it's not null)
  int? middleNameLength = middleName?.length;
  print('Middle name length: $middleNameLength');


  // 4. Reassign middleName to null
  middleName = null;
  print('Middle Name is now null.');


  // 5. Use null-aware operator again and print the length (which will be null)
  int? currentLength = middleName?.length;

  print('Middle name length: $currentLength');

  // 6. Print a message based on whether currentLength is null
  if (currentLength == null) {
    print('No middle name provided.');
  } else {
    print('Middle name exists.');
  }
}
```