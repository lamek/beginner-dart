## Solution: Problem 11 - Creating Your First Class

```dart
// Define your Dog class here
class Dog {
  String name;
  int age;
}

void main() {
  // Create Dog objects (instances) here
  var dog1 = Dog();
  var dog2 = Dog();

  // Set the properties for each dog object here
  dog1.name = "Buddy";
  dog1.age = 3;

  dog2.name = "Lucy";
  dog2.age = 5;

  // Print the information about each dog here
  print("Dog 1: Name: ${dog1.name}, Age: ${dog1.age}");
  print("Dog 2: Name: ${dog2.name}, Age: ${dog2.age}");
}
```