Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, followed by its solution.

---

**Problem Description**

**Objective:** Practice creating classes, implementing inheritance, and observing polymorphism in Dart.

**Scenario:** You are building a simple system to manage employees in a company. All employees have a name, ID, and salary. Some employees are Managers, who belong to a specific department in addition to their standard employee details.

**Tasks:**

1.  **Create an `Employee` Class:**
    *   Define a class named `Employee`.
    *   It should have the following properties:
        *   `name` (String)
        *   `id` (int)
        *   `salary` (double)
    *   Create a constructor to initialize these properties when an `Employee` object is created.
    *   Create a method `updateSalary(double newSalary)` that updates the employee's salary.
    *   Create a method `displayInfo()` that prints the employee's details (name, ID, salary) to the console in a readable format.

2.  **Create a `Manager` Class:**
    *   Define a class named `Manager` that **inherits** from the `Employee` class.
    *   Add an additional property specific to managers:
        *   `department` (String)
    *   Create a constructor for the `Manager` class. This constructor should initialize the `name`, `id`, `salary`, *and* the `department`. Remember to call the superclass constructor (`Employee`) to initialize the inherited properties.
    *   **Override** the `displayInfo()` method in the `Manager` class. This overridden method should first print the standard employee information (you can reuse the parent's method using `super`) and then print the manager's department.

3.  **Demonstrate Usage (in `main` function):**
    *   Create an instance of the `Employee` class.
    *   Create an instance of the `Manager` class.
    *   Call `displayInfo()` on both objects to show their initial details.
    *   Call `updateSalary()` on one of the objects.
    *   Call `displayInfo()` again on the object whose salary was updated to show the change.
    *   Create a list of type `Employee` and add both the `Employee` object and the `Manager` object to it.
    *   Iterate through the list and call `displayInfo()` on each element to demonstrate polymorphism (calling the correct version of `displayInfo` based on the actual object type).

---

**Solution Code**

```dart
// Base class: Employee
class Employee {
  String name;
  int id;
  double salary;

  // Constructor for Employee
  Employee(this.name, this.id, this.salary);

  // Method to update salary
  void updateSalary(double newSalary) {
    if (newSalary > 0) {
      this.salary = newSalary;
      print("$name's salary updated to \$${salary.toStringAsFixed(2)}");
    } else {
      print("Invalid salary amount.");
    }
  }

  // Method to display employee information
  void displayInfo() {
    print("--- Employee Info ---");
    print("Name: $name");
    print("ID: $id");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

// Derived class: Manager (inherits from Employee)
class Manager extends Employee {
  String department;

  // Constructor for Manager
  // Calls the Employee constructor using 'super' to initialize inherited properties
  Manager(String name, int id, double salary, this.department)
      : super(name, id, salary);

  // Overriding the displayInfo method
  @override // Annotation indicating method override (good practice)
  void displayInfo() {
    super.displayInfo(); // Call the base class's displayInfo method first
    print("Department: $department"); // Add manager-specific info
    print("Role: Manager"); // Added for extra clarity
  }
}

void main() {
  // 1. Create an Employee instance
  Employee emp1 = Employee("Alice Smith", 101, 50000.00);

  // 2. Create a Manager instance
  Manager mgr1 = Manager("Bob Johnson", 102, 80000.00, "Technology");

  // 3. Display initial info
  print("--- Initial Details ---");
  emp1.displayInfo();
  print(""); // Add a blank line for separation
  mgr1.displayInfo();
  print("\n========================\n");

  // 4. Update salary for the manager
  print("--- Updating Salary ---");
  mgr1.updateSalary(85000.00);
  print(""); // Add a blank line

  // 5. Display info after update
  print("--- Details After Update ---");
  mgr1.displayInfo();
  print("\n========================\n");

  // 6. Demonstrate Polymorphism using a List
  print("--- Polymorphism Demo (List Iteration) ---");
  List<Employee> employees = [emp1, mgr1]; // List holds both Employee and Manager

  for (var emp in employees) {
    // The correct displayInfo() is called based on the actual object type
    emp.displayInfo();
    print("-----------------------"); // Separator between employees in the list
  }
}
```

**Explanation:**

1.  **`Employee` Class:** Defines the basic structure with properties and methods common to all employees.
2.  **`Manager` Class:** Uses `extends Employee` to inherit properties and methods. Its constructor uses `: super(name, id, salary)` to pass required values to the `Employee` constructor.
3.  **`@override`:** The `displayInfo` method in `Manager` is marked with `@override` to clearly indicate it's replacing the method from the `Employee` class.
4.  **`super.displayInfo()`:** Inside the overridden `Manager.displayInfo()`, this line calls the original `displayInfo()` method from the `Employee` class, avoiding code duplication.
5.  **Polymorphism:** In `main`, the `List<Employee> employees` can hold both `Employee` and `Manager` objects because `Manager` *is an* `Employee` (due to inheritance). When `emp.displayInfo()` is called inside the loop, Dart determines at runtime whether `emp` currently refers to an `Employee` or a `Manager` object and executes the appropriate version of the `displayInfo` method. This ability to treat objects of different classes uniformly through a common interface (or superclass) is polymorphism.