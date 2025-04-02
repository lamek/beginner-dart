Okay, here is a beginner Dart problem focusing on inheritance and polymorphism, followed by its solution.

---

## Problem Description: Animal Sounds (Inheritance and Polymorphism)

**Objective:** Practice basic object-oriented programming concepts in Dart, specifically inheritance and polymorphism.

**Tasks:**

1.  **Create a Base Class:**
    *   Define a class named `Animal`.
    *   Give the `Animal` class a method named `makeSound()` that prints the text: "Animal makes a generic sound."

2.  **Create Subclasses:**
    *   Define a class named `Dog` that **inherits** from the `Animal` class.
    *   **Override** the `makeSound()` method in the `Dog` class so that it prints: "Woof!".
    *   Define a class named `Cat` that **inherits** from the `Animal` class.
    *   **Override** the `makeSound()` method in the `Cat` class so that it prints: "Meow!".

3.  **Test the Classes:**
    *   In your `main` function:
        *   Create an instance (object) of the `Dog` class.
        *   Create an instance (object) of the `Cat` class.
        *   Call the `makeSound()` method on the `Dog` object.
        *   Call the `makeSound()` method on the `Cat` object.
    *   **Bonus (Polymorphism):**
        *   Create a `List` of type `Animal`.
        *   Add both the `Dog` object and the `Cat` object to this list.
        *   Iterate through the list and call the `makeSound()` method on each element in the list. Observe how the correct specific sound is printed for each type of animal, even though you are calling the method on an `Animal` type reference.

**Expected Output:**

```
Woof!
Meow!

--- Polymorphism Demo ---
Woof!
Meow!
```

---

## Solution Code:

```dart
// Base class Animal
class Animal {
  // Method to be overridden by subclasses
  void makeSound() {
    print("Animal makes a generic sound.");
  }
}

// Subclass Dog inheriting from Animal
class Dog extends Animal {
  // Overriding the makeSound method
  @override // Good practice to use the @override annotation
  void makeSound() {
    print("Woof!");
  }
}

// Subclass Cat inheriting from Animal
class Cat extends Animal {
  // Overriding the makeSound method
  @override // Good practice to use the @override annotation
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  // Create instances (objects) of the subclasses
  Dog myDog = Dog();
  Cat myCat = Cat();

  // Call the overridden methods directly on the specific objects
  myDog.makeSound(); // Output: Woof!
  myCat.makeSound(); // Output: Meow!

  print("\n--- Polymorphism Demo ---");

  // Create a list that can hold Animal objects (and its subclasses)
  List<Animal> animals = [];
  animals.add(myDog); // Add a Dog object
  animals.add(myCat); // Add a Cat object

  // Iterate through the list of Animals
  // Even though the loop variable 'animal' is of type Animal,
  // Dart determines the actual object type at runtime (Dog or Cat)
  // and calls the appropriate overridden makeSound() method. This is polymorphism.
  for (Animal animal in animals) {
    animal.makeSound(); // Calls Dog's makeSound() then Cat's makeSound()
  }
}
```