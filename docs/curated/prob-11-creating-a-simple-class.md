---
date: 2025-04-05
title: Problem 11 - Creating Your First Class
category: curated
difficulty: beginner
concepts: classes, objects, properties, instance variables, instantiation
---

# Problem 11: Creating Your First Class

Now let's explore one of the fundamental concepts in many programming languages, including Dart: **classes** and **objects**. Classes act as blueprints for creating objects.

## Understanding Classes and Objects

Think of a **class** as a template or blueprint for creating things. For example, you could have a class `Car` that defines what properties all cars have (like `make`, `model`, `color`).

An **object** is a specific instance created from that class blueprint. So, a specific red Toyota Camry would be an *object* (or instance) of the `Car` class.

Classes define **properties** (also called instance variables), which are variables associated with the objects created from the class. Each object can have its own values for these properties.

**Syntax Basics:**

*   **Defining a class:**
    ```dart
    class ClassName {
      // Define properties (instance variables) here
      String property1;
      int property2;
      // (We'll add methods/functions later!)
    }
    ```
*   **Creating an object (instantiation):**
    ```dart
    var myObject = ClassName();
    ```
*   **Accessing/Setting properties:**
    ```dart
    myObject.property1 = "some value"; // Setting
    print(myObject.property2);       // Accessing
    ```

## The Exercise

**Task:**

1.  Define a simple Dart class named `Dog`.
2.  Give the `Dog` class two properties:
    *   `name` of type `String`.
    *   `age` of type `int`.
3.  In your `main` function, create **two** different `Dog` objects (instances).
4.  Set the `name` and `age` properties for the first dog object (e.g., "Buddy", 3).
5.  Set the `name` and `age` properties for the second dog object (e.g., "Lucy", 5).
6.  Print the name and age of each dog on separate lines, describing which dog it is (e.g., "Dog 1: Name: ..., Age: ...").

**Example Output:**

```
Dog 1: Name: Buddy, Age: 3
Dog 2: Name: Lucy, Age: 5
```

## Ready to Code?

Create a new Dart file (e.g., `simple_class.dart`) and write your solution. Remember that class definitions typically go *outside* the `main` function, often at the top of the file.

Or, use DartPad with this boilerplate:

```dart
// Define your Dog class here


void main() {
  // Create Dog objects (instances) here

  // Set the properties for each dog object here

  // Print the information about each dog here
}
```

## Need Some Hints?

*   Use the `class` keyword to define your `Dog` class.
*   Inside the class definition (`{ }`), declare the `name` and `age` variables with their types (`String name; int age;`).
*   Create instances using `var dog1 = Dog();` and `var dog2 = Dog();`.
*   Use the dot (`.`) notation to set and access properties: `dog1.name = "Buddy";`, `print(dog2.age);`.
*   Use string interpolation or concatenation within `print()` to format your output nicely.

## Solution

[View the Solution](curated-solutions/prob-11-solution.md)

## Further Practice

Want to practice more with classes?

### More Exercises:

*   **Easy:** Add a third property to your `Dog` class, such as `breed` (String). Create new `Dog` objects, set all three properties, and print them.
*   **Medium:** Create a new class called `Book` with properties `title` (String) and `author` (String). Create two `Book` objects, set their properties, and print their details.
*   **Harder:** Create a `Rectangle` class with `width` (double) and `height` (double) properties. In your `main` function, create a `Rectangle` object, set its width and height, and then calculate and print the rectangle's area (`width * height`) using the object's properties.

### Explore More Problems:

You can find more problems related to object-oriented concepts in the [Classes and Objects category](../categories/classes.md).