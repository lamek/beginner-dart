```markdown
---
title: Animal Sounds (Inheritance and Polymorphism)
category: Object-Oriented Programming
difficulty: Beginner
focus:
  - class
  - methods
  - inheritance (extends)
  - method overriding (@override)
  - object instantiation
  - polymorphism
  - List (optional)
  - print
---

# Animal Sounds (Inheritance and Polymorphism)

## Problem Description

Practice creating classes, using inheritance to create subclasses, and observing polymorphism by overriding methods. You will create a base `Animal` class and specific animal subclasses (`Dog`, `Cat`) that override a common method.

## Requirements / Tasks

1.  **Create a Base Class `Animal`:**
    *   Define a class named `Animal`.
    *   Inside the `Animal` class, create a method named `makeSound()` that prints the text: `"The animal makes a sound."`.

2.  **Create a Subclass `Dog`:**
    *   Define a class named `Dog` that **inherits** from the `Animal` class using the `extends` keyword.
    *   **Override** the `makeSound()` method in the `Dog` class (using the `@override` annotation) to print: `"Woof! Woof!"`.

3.  **Create a Subclass `Cat`:**
    *   Define a class named `Cat` that **inherits** from the `Animal` class.
    *   **Override** the `makeSound()` method in the `Cat` class to print: `"Meow! Meow!"`.

4.  **Main Function Execution:**
    *   In the `main()` function:
        *   Create an object (instance) of the `Dog` class.
        *   Call the `makeSound()` method on the `Dog` object.
        *   Create an object (instance) of the `Cat` class.
        *   Call the `makeSound()` method on the `Cat` object.
        *   *(Optional Bonus)* Create a `List<Animal>` and add both the `Dog` and `Cat` objects to it. Iterate through the list and call `makeSound()` on each element to demonstrate polymorphism.

## Expected Output

```text
Woof! Woof!
Meow! Meow!

--- Polymorphism Demo ---
Woof! Woof!
Meow! Meow!
```
*(Output might vary slightly depending on whether you implement the bonus part and add the extra print statements)*

## Focus

This problem focuses on:

*   Defining classes using the `class` keyword.
*   Creating methods within classes.
*   Implementing inheritance using the `extends` keyword.
*   Overriding methods from a superclass using `@override`.
*   Creating instances (objects) of classes.
*   Understanding and demonstrating polymorphism (calling subclass methods through a superclass reference).
*   Using `List` to hold objects of related types (optional bonus).
*   Basic console output using `print()`.

## Boilerplate Code

```dart
// 1. Define the base class Animal
// class Animal {
//   // Add makeSound method here
// }

// 2. Define the Dog subclass inheriting from Animal
// class Dog ... {
//   // Override makeSound method here
// }

// 3. Define the Cat subclass inheriting from Animal
// class Cat ... {
//   // Override makeSound method here
// }


void main() {
  // 4. Main Function Execution

  // Create Dog instance and call makeSound
  // ...

  // Create Cat instance and call makeSound
  // ...


  // Optional Bonus: Polymorphism Demo
  // print("\n--- Polymorphism Demo ---");
  // Create a List<Animal>
  // ...
  // Add Dog and Cat objects to the list
  // ...
  // Loop through the list and call makeSound on each animal
  // ...

}
```