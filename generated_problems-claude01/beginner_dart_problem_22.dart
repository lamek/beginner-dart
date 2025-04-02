Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

## Dart Problem: Animal Sounds and Movements

**Problem Description:**

Your task is to model a simple animal hierarchy using Dart classes.

1.  **Create a Base Class `Animal`:**
    *   It should have a `String` property named `name`.
    *   It should have a constructor that accepts the `name` and initializes the property.
    *   It should have a method `makeSound()` that prints a generic sound message like "`<name>` makes a sound."`.
    *   It should have a method `move()` that prints a generic movement message like "`<name>` moves."`.

2.  **Create Derived Classes:**
    *   **`Dog`:** Inherits from `Animal`.
        *   Its constructor should take a `name` and call the `Animal` constructor.
        *   Override the `makeSound()` method to print "`<name>` barks: Woof! Woof!".
        *   Override the `move()` method to print "`<name>` runs on four legs.".
    *   **`Cat`:** Inherits from `Animal`.
        *   Its constructor should take a `name` and call the `Animal` constructor.
        *   Override the `makeSound()` method to print "`<name>` meows: Meow!".
        *   Override the `move()` method to print "`<name>` walks silently.".
    *   **`Bird`:** Inherits from `Animal`.
        *   Its constructor should take a `name` and call the `Animal` constructor.
        *   Override the `makeSound()` method to print "`<name>` chirps: Chirp! Chirp!".
        *   Override the `move()` method to print "`<name>` flies.".

3.  **Demonstrate Polymorphism:**
    *   In your `main` function:
        *   Create at least one instance (object) of `Dog`, `Cat`, and `Bird`.
        *   Create a `List` of type `Animal` and add all the created animal objects to it.
        *   Iterate through the list and, for each `Animal` in the list, call its `makeSound()` and `move()` methods. Observe how the correct specific method for each animal type is executed.

---

## Dart Solution:

```dart
// Base class: Animal
class Animal {
  String name;

  // Constructor for the Animal class
  Animal(this.name);

  // Method for making a sound (generic)
  void makeSound() {
    print('$name makes a sound.');
  }

  // Method for movement (generic)
  void move() {
    print('$name moves.');
  }
}

// Derived class: Dog (inherits from Animal)
class Dog extends Animal {
  // Constructor for Dog, calling the base class (Animal) constructor
  Dog(String name) : super(name);

  // Override the makeSound method for Dog
  @override
  void makeSound() {
    print('$name barks: Woof! Woof!');
  }

  // Override the move method for Dog
  @override
  void move() {
    print('$name runs on four legs.');
  }
}

// Derived class: Cat (inherits from Animal)
class Cat extends Animal {
  // Constructor for Cat, calling the base class (Animal) constructor
  Cat(String name) : super(name);

  // Override the makeSound method for Cat
  @override
  void makeSound() {
    print('$name meows: Meow!');
  }

  // Override the move method for Cat
  @override
  void move() {
    print('$name walks silently.');
  }
}

// Derived class: Bird (inherits from Animal)
class Bird extends Animal {
  // Constructor for Bird, calling the base class (Animal) constructor
  Bird(String name) : super(name);

  // Override the makeSound method for Bird
  @override
  void makeSound() {
    print('$name chirps: Chirp! Chirp!');
  }

  // Override the move method for Bird
  @override
  void move() {
    print('$name flies.');
  }
}

void main() {
  // Create instances of derived classes
  var dog = Dog('Buddy');
  var cat = Cat('Whiskers');
  var bird = Bird('Sky');
  var genericAnimal = Animal('Creature'); // Example of base class instance

  // Demonstrate Polymorphism using a List of Animals
  List<Animal> animals = [dog, cat, bird, genericAnimal];

  print('--- Demonstrating Polymorphism ---');

  // Iterate through the list and call methods
  for (var animal in animals) {
    print('\nProcessing ${animal.name}:'); // Show which animal is being processed
    animal.makeSound(); // Calls the overridden method specific to the object's actual type
    animal.move();      // Calls the overridden method specific to the object's actual type
  }

  print('\n--- End of Demonstration ---');
}
```

**Explanation:**

1.  **Inheritance:** `Dog`, `Cat`, and `Bird` use `extends Animal` to inherit properties (`name`) and methods (`makeSound`, `move`) from the `Animal` class. The `super(name)` call in their constructors passes the name up to the `Animal` constructor.
2.  **Overriding:** The `@override` annotation indicates that the `makeSound` and `move` methods in the derived classes are intentionally replacing the versions inherited from `Animal`.
3.  **Polymorphism:** The `List<Animal> animals` can hold objects of any class that *is an* `Animal` (including `Dog`, `Cat`, `Bird`). When we loop through the list and call `animal.makeSound()` or `animal.move()`, Dart determines *at runtime* which actual version of the method to call based on the object's *true type* (Dog, Cat, or Bird), even though the variable `animal` is typed as `Animal`. This is polymorphism in action.