```markdown
---
title: Employee Hierarchy and Polymorphism
category: Object-Oriented Programming
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

## Solution Code

```dart
import 'dart:io'; // Not strictly needed for core logic, but good practice

// Base Class: Employee
class Employee {
  String name;
  double salary;

  // Constructor for Employee
  Employee(this.name, this.salary);

  // Method to display basic employee information
  void displayInfo() {
    print("Employee Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}"); // Format salary nicely
  }
}

// Subclass: Manager inheriting from Employee
class Manager extends Employee {
  // Constructor for Manager
  // Calls the Employee constructor using 'super'
  Manager(String name, double salary) : super(name, salary);

  // Manager-specific method
  void manageTeam() {
    print("$name is managing the team.");
  }
}

// Subclass: Developer inheriting from Employee
class Developer extends Employee {
  // Constructor for Developer
  // Calls the Employee constructor using 'super'
  Developer(String name, double salary) : super(name, salary);

  // Developer-specific method
  void writeCode() {
    print("$name is writing code.");
  }
}

void main() {
  // Create instances of Manager and Developer
  Manager manager1 = Manager("Alice Smith", 80000.0);
  Developer dev1 = Developer("Bob Johnson", 65000.0);
  Developer dev2 = Developer("Charlie Brown", 70000.0);

  // Create a list of Employee type to demonstrate polymorphism
  List<Employee> employees = [manager1, dev1, dev2];

  print("--- Company Employee Roster ---");

  // Iterate through the list of employees
  for (var emp in employees) {
    print("\n-----------------------------"); // Separator

    // Call the common method from the Employee base class
    emp.displayInfo();

    // Check the actual type of the employee object and call specific methods
    // Dart's type promotion helps here after the 'is' check
    if (emp is Manager) {
      emp.manageTeam(); // Can directly call Manager method
    } else if (emp is Developer) {
      emp.writeCode(); // Can directly call Developer method
    }
  }
   print("\n-----------------------------"); // Final Separator
}
```

## Explanation:

1.  **`Employee` Class:** Defines the basic structure with `name`, `salary`, a constructor, and `displayInfo`. This acts as the superclass.
2.  **`Manager` and `Developer` Classes:** Use `extends Employee` to inherit properties and methods from `Employee`. Their constructors use `: super(name, salary)` to pass the required arguments up to the `Employee` constructor. They each add their unique methods (`manageTeam`, `writeCode`). These are the subclasses.
3.  **`main` Function:**
    *   Objects `manager1`, `dev1`, `dev2` are created from the specific subclasses.
    *   The `List<Employee> employees` holds objects of different subclass types (`Manager`, `Developer`), but treats them uniformly through the common base class `Employee`. This ability to treat objects of different types in a uniform way is **polymorphism**.
    *   The `for` loop iterates through the list.
    *   `emp.displayInfo()` works polymorphically. Even though `emp` is declared as `Employee` in the list, Dart calls the `displayInfo` method appropriate for the *actual* object (though in this case, it's the one inherited from `Employee`).
    *   The `if (emp is Manager)` and `else if (emp is Developer)` checks determine the *runtime* type of the object currently referenced by the `emp` variable.
    *   Inside the `if`/`else if` blocks, Dart performs **type promotion**. Because the check confirmed the type, Dart automatically treats `emp` as a `Manager` or `Developer` within that specific block, allowing direct calls to their specific methods (`manageTeam()` or `writeCode()`) without needing an explicit cast (like `(emp as Manager).manageTeam()`).
```