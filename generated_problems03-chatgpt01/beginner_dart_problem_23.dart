Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

**Problem Description: Student Grade System**

**Goal:** Create a simple system to manage student information and grades using Dart classes, demonstrating inheritance and polymorphism.

**Requirements:**

1.  **`Student` Class:**
    *   Create a base class named `Student`.
    *   It should have properties for `name` (String) and three grades: `grade1`, `grade2`, `grade3` (all doubles).
    *   Include a constructor to initialize these properties.
    *   Implement a method `calculateAverage()` that calculates and returns the average of the three grades.
    *   Implement a method `displayDetails()` that prints the student's name and their calculated average grade to the console.

2.  **`GraduateStudent` Class:**
    *   Create a class named `GraduateStudent` that **inherits** from the `Student` class.
    *   Add an additional property specific to graduate students: `thesisGrade` (double).
    *   Include a constructor that initializes the `name`, `grade1`, `grade2`, `grade3` (using the parent constructor), and the `thesisGrade`.
    *   **Override** the `displayDetails()` method. The overridden method should print the student's name, their average grade (you can reuse the `calculateAverage()` method from the parent class), and their thesis grade.

3.  **Demonstration (in `main` function):**
    *   Create an instance of the `Student` class.
    *   Create an instance of the `GraduateStudent` class.
    *   Call the `displayDetails()` method on both objects to show their information.
    *   **Polymorphism Demo:** Create a `List` that can hold `Student` objects. Add both the `Student` instance and the `GraduateStudent` instance to this list. Iterate through the list and call the `displayDetails()` method on each element. Observe how the correct version of `displayDetails()` is called for each object type.

---

**Solution Code:**

```dart
// Base class: Student
class Student {
  String name;
  double grade1;
  double grade2;
  double grade3;

  // Constructor for Student
  Student(this.name, this.grade1, this.grade2, this.grade3);

  // Method to calculate the average of the three grades
  double calculateAverage() {
    return (grade1 + grade2 + grade3) / 3.0;
  }

  // Method to display student details
  void displayDetails() {
    print("--- Student Details ---");
    print("Name: $name");
    print("Average Grade: ${calculateAverage().toStringAsFixed(2)}"); // Format to 2 decimal places
  }
}

// Derived class: GraduateStudent inheriting from Student
class GraduateStudent extends Student {
  double thesisGrade;

  // Constructor for GraduateStudent
  // Calls the parent constructor using 'super'
  GraduateStudent(String name, double grade1, double grade2, double grade3, this.thesisGrade)
      : super(name, grade1, grade2, grade3);

  // Override the displayDetails method
  @override
  void displayDetails() {
    print("--- Graduate Student Details ---");
    print("Name: $name");
    // Reuse the parent's calculateAverage method
    print("Average Course Grade: ${super.calculateAverage().toStringAsFixed(2)}");
    print("Thesis Grade: ${thesisGrade.toStringAsFixed(2)}");
  }
}

void main() {
  // 1. Create an instance of Student
  Student student1 = Student("Alice", 85.0, 90.0, 78.5);

  // 2. Create an instance of GraduateStudent
  GraduateStudent gradStudent1 = GraduateStudent("Bob", 92.0, 88.5, 95.0, 89.0);

  print("--- Individual Object Details ---");
  // 3. Call displayDetails on individual objects
  student1.displayDetails();
  print(""); // Add a blank line for separation
  gradStudent1.displayDetails();
  print("\n---------------------------------");

  print("--- Polymorphism Demonstration ---");
  // 4. Polymorphism Demo: Create a list of Student objects
  List<Student> students = [];
  students.add(student1);       // Add a Student object
  students.add(gradStudent1);  // Add a GraduateStudent object (possible because it IS-A Student)

  // Iterate through the list and call displayDetails
  for (Student s in students) {
    s.displayDetails(); // Dart calls the correct overridden method at runtime
    print(""); // Add a blank line for separation
  }
}
```

**Explanation of Concepts:**

1.  **Class:** `Student` and `GraduateStudent` are blueprints for creating objects.
2.  **Object:** `student1` and `gradStudent1` are instances (objects) created from these classes.
3.  **Inheritance:** `GraduateStudent extends Student` means `GraduateStudent` inherits all properties and methods from `Student` (unless overridden). `super(...)` is used in the `GraduateStudent` constructor to call the `Student` constructor.
4.  **Method Overriding:** `GraduateStudent` provides its own version of `displayDetails()` using the `@override` annotation. This version is specific to graduate students. `super.calculateAverage()` is used inside the overridden method to call the parent class's version of `calculateAverage`.
5.  **Polymorphism:** The `List<Student>` can hold both `Student` and `GraduateStudent` objects because `GraduateStudent` *is a* type of `Student`. When `s.displayDetails()` is called inside the loop, Dart determines the *actual* type of the object (`s`) at runtime and calls the appropriate version of the `displayDetails()` method (either the one in `Student` or the overridden one in `GraduateStudent`). This ability to treat objects of different derived types in a uniform way (through the base type reference) is polymorphism.