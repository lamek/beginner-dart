Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Topic:** Classes, Objects, Inheritance, Polymorphism

**Goal:** Create a simple hierarchy of animal classes and demonstrate polymorphism by calling a common method on different types of animals stored in a list.

**Tasks:**

1.  **Create a Base Class:** Define a class named `Animal`.
    *   It should have a method named `makeSound()` that prints a generic message like `"Animal makes a sound"`.
2.  **Create Subclasses:**
    *   Define a class named `Dog` that **inherits** from `Animal`.
    *   **Override** the `makeSound()` method in `Dog` to print `"Woof!"`.
    *   Define a class named `Cat` that **inherits** from `Animal`.
    *   **Override** the `makeSound()` method in `Cat` to print `"Meow!"`.
3.  **Demonstrate Polymorphism:**
    *   In the `main` function, create a `List` that can hold `Animal` objects.
    *   Add at least one `Dog` object and at least one `Cat` object to this list.
    *   Iterate through the list using a loop.
    *   Inside the loop, call the `makeSound()` method on each element (animal) in the list.
    *   Observe that the correct, specific sound is printed for each type of animal, even though you are calling the same method (`makeSound()`) on variables typed as `Animal`.

---

**Solution Code**

```dart
// Base class
class Animal {
  // Method in the base class
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Subclass Dog inheriting from Animal
class Dog extends Animal {
  // Overriding the makeSound method
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Subclass Cat inheriting from Animal
class Cat extends Animal {
  // Overriding the makeSound method
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  // Create a list that holds Animal objects.
  // This list can contain instances of Animal or any of its subclasses (Dog, Cat).
  List<Animal> animals = [
    Dog(),      // Add a Dog object
    Cat(),      // Add a Cat object
    Dog(),      // Add another Dog object
    Animal(),   // Add a generic Animal object
    Cat(),      // Add another Cat object
  ];

  print('--- Animal Sounds ---');

  // Iterate through the list of animals
  for (Animal animal in animals) {
    // Call the makeSound() method on each animal.
    // Dart determines at runtime which version of makeSound() to execute
    // based on the actual object type (Dog, Cat, or Animal).
    // This is polymorphism.
    animal.makeSound();
  }

  print('--- End of Sounds ---');
}

/*
Expected Output:

--- Animal Sounds ---
Woof!
Meow!
Woof!
Animal makes a sound
Meow!
--- End of Sounds ---

*/
```

---