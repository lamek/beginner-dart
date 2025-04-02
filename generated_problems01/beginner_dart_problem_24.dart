Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

## Problem Description

**Objective:** Model different types of employees in a company using object-oriented principles in Dart.

**Requirements:**

1.  **Create a Base Class `Employee`:**
    *   It should have two properties: `name` (String) and `salary` (double).
    *   It should have a constructor to initialize these properties.
    *   It should have a method `displayInfo()` that prints the employee's name and salary.

2.  **Create a Subclass `Manager`:**
    *   It should inherit from the `Employee` class.
    *   It should have a constructor that takes `name` and `salary` and calls the parent class's constructor.
    *   It should have a specific method `manageTeam()` that prints a message like "[Manager Name] is managing the team.".

3.  **Create another Subclass `Developer`:**
    *   It should inherit from the `Employee` class.
    *   It should have a constructor that takes `name` and `salary` and calls the parent class's constructor.
    *   It should have a specific method `writeCode()` that prints a message like "[Developer Name] is writing code.".

4.  **Demonstrate Polymorphism:**
    *   In your `main` function:
        *   Create at least one `Manager` object and one `Developer` object.
        *   Store these objects in a `List` of type `Employee`.
        *   Iterate through the list. For each employee:
            *   Call the `displayInfo()` method.
            *   Check the employee's actual type (`Manager` or `Developer`).
            *   If it's a `Manager`, call the `manageTeam()` method.
            *   If it's a `Developer`, call the `writeCode()` method.
            *   Print a separator line (e.g., `---`) between employees for clarity.

---

## Dart Solution Code

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

**Explanation:**

1.  **`Employee` Class:** Defines the basic structure with `name`, `salary`, a constructor, and `displayInfo`.
2.  **`Manager` and `Developer` Classes:** Use `extends Employee` to inherit. Their constructors use `: super(name, salary)` to pass the required arguments to the `Employee` constructor. They each have their unique methods (`manageTeam`, `writeCode`).
3.  **`main` Function:**
    *   Objects `manager1`, `dev1`, `dev2` are created.
    *   The `List<Employee> employees` holds objects of different subclass types (`Manager`, `Developer`), but treats them uniformly as `Employee` objects initially. This is polymorphism.
    *   The `for` loop iterates through the list.
    *   `emp.displayInfo()` works because `displayInfo` is defined in the base `Employee` class, accessible to all subclasses.
    *   The `if (emp is Manager)` and `else if (emp is Developer)` checks determine the *runtime* type of the object stored in the `emp` variable.
    *   Inside the `if`/`else if` blocks, Dart performs *type promotion*, meaning it knows `emp` is definitely a `Manager` or `Developer` within that block, allowing direct calls to their specific methods (`manageTeam()` or `writeCode()`) without explicit casting.