---
title: Employee Hierarchy
category: Classes and Objects
difficulty: Beginner
focus:
  - Class Definition
  - Constructors
  - Inheritance (`extends`)
  - Method Overriding (Implicitly, `displayInfo` is used polymorphically)
  - Polymorphism
  - Lists (`List<T>`)
  - Type Checking (`is`)
  - Type Promotion
---

# Employee Hierarchy and Polymorphism

## Problem Description

**Objective:** Model different types of employees in a company using object-oriented principles in Dart, specifically focusing on classes, inheritance, and polymorphism.

## Requirements

1.  **Create a Base Class `Employee`:**
    *   It should have two properties: `name` (String) and `salary` (double).
    *   It should have a constructor to initialize these properties.
    *   It should have a method `displayInfo()` that prints the employee's name and salary.

2.  **Create a Subclass `Manager`:**
    *   It should inherit from the `Employee` class using `extends`.
    *   It should have a constructor that takes `name` and `salary` and calls the parent class's constructor using `super`.
    *   It should have a specific method `manageTeam()` that prints a message like "[Manager Name] is managing the team.".

3.  **Create another Subclass `Developer`:**
    *   It should inherit from the `Employee` class using `extends`.
    *   It should have a constructor that takes `name` and `salary` and calls the parent class's constructor using `super`.
    *   It should have a specific method `writeCode()` that prints a message like "[Developer Name] is writing code.".

4.  **Demonstrate Polymorphism:**
    *   In your `main` function:
        *   Create at least one `Manager` object and one `Developer` object.
        *   Store these objects in a `List` of type `Employee`.
        *   Iterate through the list. For each employee:
            *   Call the common `displayInfo()` method.
            *   Check the employee's actual runtime type (`Manager` or `Developer`) using the `is` operator.
            *   If it's a `Manager`, call the `manageTeam()` method. (Leverage Dart's type promotion).
            *   If it's a `Developer`, call the `writeCode()` method. (Leverage Dart's type promotion).
            *   Print a separator line (e.g., `---`) between employees for clarity.

## Focus

This problem focuses on:

*   Defining classes (`class`).
*   Creating constructors.
*   Implementing inheritance using `extends`.
*   Calling superclass constructors using `super()`.
*   Defining methods within classes.
*   Using lists (`List<Employee>`) to hold objects of related types.
*   Understanding and demonstrating polymorphism (treating objects of different subclasses through a common base class reference).
*   Using type checking (`is`) to determine an object's runtime type.
*   Leveraging Dart's type promotion within conditional blocks (`if (obj is Type)`).

## Boilerplate Code

```dart
import 'dart:io'; // Not strictly needed for core logic, but good practice

// Base Class: Employee
class Employee {
  // TODO: Define properties: name (String), salary (double)

  // TODO: Define Constructor for Employee

  // TODO: Define displayInfo Method
}

// Subclass: Manager
class Manager extends Employee {
  // TODO: Define Constructor for Manager (use super)

  // TODO: Define manageTeam Method
}

// Subclass: Developer
class Developer extends Employee {
  // TODO: Define Constructor for Developer (use super)

  // TODO: Define writeCode Method
}

void main() {
  // 1. Create instances of Manager and Developer
  // Manager manager1 = ...
  // Developer dev1 = ...
  // Developer dev2 = ...

  // 2. Create a List<Employee> and add instances
  // List<Employee> employees = [...];

  print("--- Company Employee Roster ---");

  // 3. Iterate through the list
  // for (var emp in employees) {
    // print("\n-----------------------------"); // Separator

    // a. Call displayInfo()

    // b. Check type (Manager/Developer) using 'is'
    // if (emp is Manager) {
        // c. Call specific methods (manageTeam)
    // } else if (emp is Developer) {
        // c. Call specific methods (writeCode)
    // }
  // }
  // print("\n-----------------------------"); // Final Separator
}
```