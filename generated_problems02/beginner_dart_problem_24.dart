Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description: Employee Hierarchy**

**Goal:** Practice creating classes, using inheritance to build a hierarchy, and observing polymorphism in action.

**Scenario:**
You need to model an employee structure for a small company. All employees have a name and a salary. However, there are different *types* of employees, like Managers and Developers, who have specific roles and potentially additional information.

**Requirements:**

1.  **`Employee` Base Class:**
    *   Create a class named `Employee`.
    *   It should have two properties: `name` (String) and `salary` (double).
    *   It should have a constructor to initialize these properties.
    *   It should have a method `displayInfo()` that prints the employee's name and salary to the console.

2.  **`Manager` Subclass:**
    *   Create a class named `Manager` that **inherits** from `Employee`.
    *   It should have an additional property: `department` (String).
    *   Its constructor should initialize `name`, `salary`, and `department`. Remember to call the parent class's constructor (`super`) to initialize the inherited properties.
    *   **Override** the `displayInfo()` method to print the name, salary, *and* department. It should ideally reuse the parent's `displayInfo()` logic.
    *   Add a specific method `manageTeam()` that prints a message like "[Manager Name] is managing the [Department Name] team."

3.  **`Developer` Subclass:**
    *   Create a class named `Developer` that **inherits** from `Employee`.
    *   It should have an additional property: `programmingLanguage` (String).
    *   Its constructor should initialize `name`, `salary`, and `programmingLanguage`. Remember to call the parent class's constructor (`super`).
    *   **Override** the `displayInfo()` method to print the name, salary, *and* programming language. It should ideally reuse the parent's `displayInfo()` logic.
    *   Add a specific method `writeCode()` that prints a message like "[Developer Name] is writing code in [Programming Language]."

4.  **Demonstration (`main` function):**
    *   Create at least one `Manager` object and one `Developer` object.
    *   Create a `List` of type `Employee` and add both objects to this list.
    *   Iterate through the list:
        *   For each `employee` in the list, call the `displayInfo()` method. Observe how the correct overridden version is called (polymorphism).
        *   Check the actual type of the employee. If it's a `Manager`, call `manageTeam()`. If it's a `Developer`, call `writeCode()`.
        *   Print a separator line (e.g., `---`) between each employee's output.

---

**Solution Code:**

```dart
// Base class: Employee
class Employee {
  String name;
  double salary;

  // Constructor for Employee
  Employee(this.name, this.salary);

  // Method to display basic employee info
  void displayInfo() {
    print('Name: $name');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

// Subclass: Manager inheriting from Employee
class Manager extends Employee {
  String department;

  // Constructor for Manager
  // Calls the parent (Employee) constructor using 'super'
  Manager(String name, double salary, this.department) : super(name, salary);

  // Override the displayInfo method to include department
  @override
  void displayInfo() {
    super.displayInfo(); // Call the parent's displayInfo method first
    print('Department: $department');
  }

  // Manager-specific method
  void manageTeam() {
    print('$name is managing the $department team.');
  }
}

// Subclass: Developer inheriting from Employee
class Developer extends Employee {
  String programmingLanguage;

  // Constructor for Developer
  // Calls the parent (Employee) constructor using 'super'
  Developer(String name, double salary, this.programmingLanguage) : super(name, salary);

  // Override the displayInfo method to include programming language
  @override
  void displayInfo() {
    super.displayInfo(); // Call the parent's displayInfo method first
    print('Programming Language: $programmingLanguage');
  }

  // Developer-specific method
  void writeCode() {
    print('$name is writing code in $programmingLanguage.');
  }
}

// Main function to demonstrate the classes
void main() {
  // Create instances of Manager and Developer
  Manager manager1 = Manager('Alice Wonderland', 90000.00, 'Product Development');
  Developer dev1 = Developer('Bob The Builder', 75000.00, 'Dart');
  Developer dev2 = Developer('Charlie Chaplin', 78000.00, 'Python');

  // Create a list of Employee type (demonstrates polymorphism)
  List<Employee> employees = [manager1, dev1, dev2];

  print('--- Employee Details ---');

  // Iterate through the list
  for (var employee in employees) {
    // Call displayInfo - the correct version is executed based on the object's actual type
    employee.displayInfo();

    // Check the specific type to call subclass-specific methods
    if (employee is Manager) {
      employee.manageTeam(); // Type promotion allows direct call
    } else if (employee is Developer) {
      employee.writeCode(); // Type promotion allows direct call
    }

    print('------------------------'); // Separator
  }
}
```