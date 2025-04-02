Okay, here is a beginner Dart problem focusing on polymorphism using class inheritance, along with its solution.

---

**Problem Description: Polymorphism with Animals**

**Goal:** Understand and implement polymorphism in Dart using class inheritance.

**Background:** You have a base class `Animal` which knows how to `makeSound()`. You also have a `Dog` class that inherits from `Animal` and overrides `makeSound()` to print "Woof!".

**Tasks:**

1.  **Define the `Animal` Base Class:**
    *   Create a class named `Animal`.
    *   Give it a method `void makeSound()` that prints "Animal makes a sound".
2.  **Define the `Dog` Subclass:**
    *   Create a class named `Dog` that `extends Animal`.
    *   Override the `makeSound()` method in the `Dog` class to print "Woof!".
3.  **Define the `Cat` Subclass:**
    *   Create a class named `Cat` that `extends Animal`.
    *   Override the `makeSound()` method in the `Cat` class to print "Meow!".
4.  **Demonstrate Polymorphism:**
    *   In the `main` function:
        *   Create a `List` that can hold `Animal` objects (e.g., `List<Animal>`).
        *   Create one instance (object) of the `Dog` class.
        *   Create one instance (object) of the `Cat` class.
        *   Add both the `Dog` object and the `Cat` object to the `List<Animal>`.
        *   Use a loop (e.g., a `for-in` loop) to iterate through the list.
        *   Inside the loop, call the `makeSound()` method on each element in the list.
        *   Observe that even though you are calling `makeSound()` on variables typed as `Animal`, the actual method executed is the one belonging to the specific subclass (`Dog` or `Cat`). This is polymorphism.

**Expected Output:**

```
Woof!
Meow!
```

---

**Solution Code:**

```dart
// File: polymorphism_animals.dart

// 1. Define the Animal Base Class
class Animal {
  void makeSound() {
    print("Animal makes a sound"); // Default sound
  }
}

// 2. Define the Dog Subclass
class Dog extends Animal {
  @override // Indicates that this method overrides a superclass method
  void makeSound() {
    print("Woof!"); // Dog's specific sound
  }
}

// 3. Define the Cat Subclass
class Cat extends Animal {
  @override // Indicates that this method overrides a superclass method
  void makeSound() {
    print("Meow!"); // Cat's specific sound
  }
}

// 4. Demonstrate Polymorphism
void main() {
  // Create a List that holds Animal objects
  // Although we add Dog and Cat objects, they are treated as Animals here.
  List<Animal> animals = [];

  // Create instances of Dog and Cat
  Dog myDog = Dog();
  Cat myCat = Cat();

  // Add the specific animal objects to the list
  animals.add(myDog);
  animals.add(myCat);

  print("Demonstrating Polymorphism:");
  // Loop through the list and call makeSound() on each animal
  for (Animal animal in animals) {
    // Dart determines at runtime which specific makeSound() method to call
    // based on the actual object's type (Dog or Cat).
    animal.makeSound();
  }
}

/*
Expected Output:
Demonstrating Polymorphism:
Woof!
Meow!
*/
```

---