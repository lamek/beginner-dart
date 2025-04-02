Okay, here is a beginner Dart problem focusing on polymorphism with a list of objects, along with its solution.

---

**Problem Description**

**Topic:** Classes and Objects (Inheritance, Polymorphism)

**Goal:** Demonstrate polymorphism by creating a list of different `Animal` subtypes (`Dog`, `Cat`) and calling a common method (`speak()`) on each element.

**Tasks:**

1.  **Define Classes:**
    *   Create a base class `Animal` with a `name` property (String) and a constructor to initialize it.
    *   Add a method `speak()` to the `Animal` class that prints a generic animal sound (e.g., "`<name>` makes a sound.").
    *   Create a `Dog` class that `extends` `Animal`. It should have a constructor that calls the parent constructor (`super`). Override the `speak()` method to print a dog-specific sound (e.g., "`<name>` says Woof!").
    *   Create a `Cat` class that `extends` `Animal`. It should have a constructor that calls the parent constructor (`super`). Override the `speak()` method to print a cat-specific sound (e.g., "`<name>` says Meow!").

2.  **Create and Populate List:**
    *   In your `main` function, create a `List` specifically typed to hold `Animal` objects (i.e., `List<Animal>`). Name it `animals`.
    *   Create at least one instance of `Dog` and at least one instance of `Cat`, giving them names.
    *   Add these `Dog` and `Cat` instances to the `animals` list.

3.  **Iterate and Demonstrate Polymorphism:**
    *   Use a `for-in` loop to iterate through the `animals` list.
    *   Inside the loop, call the `speak()` method on the current `animal` element.
    *   Observe how the correct `speak()` method (either from `Dog` or `Cat`) is executed for each object, even though you are calling it on a variable of type `Animal`. This is polymorphism in action.

**Expected Output:**

The output should show the specific sounds made by each animal added to the list, demonstrating that the overridden methods were called. For example:

```
Buddy says Woof!
Whiskers says Meow!
```
*(Names and exact phrasing may vary based on your implementation)*

---

**Solution Code**

```dart
// --- Class Definitions ---

// Base class
class Animal {
  String name;

  // Constructor
  Animal(this.name);

  // Method to be overridden
  void speak() {
    print('$name makes a sound.');
  }
}

// Derived class Dog
class Dog extends Animal {
  // Constructor calling the parent constructor
  Dog(String name) : super(name);

  // Override the speak method
  @override
  void speak() {
    print('$name says Woof!');
  }
}

// Derived class Cat
class Cat extends Animal {
  // Constructor calling the parent constructor
  Cat(String name) : super(name);

  // Override the speak method
  @override
  void speak() {
    print('$name says Meow!');
  }
}

// --- Main Program ---

void main() {
  // 1. Create a List that can hold Animal objects
  List<Animal> animals = [];

  // 2. Create instances of Dog and Cat
  Dog dog1 = Dog('Buddy');
  Cat cat1 = Cat('Whiskers');
  Dog dog2 = Dog('Rex');
  Cat cat2 = Cat('Shadow');

  // 3. Add the instances to the list
  animals.add(dog1);
  animals.add(cat1);
  animals.add(dog2);
  animals.add(cat2);

  // 4. Iterate through the list and call speak() on each animal
  print('--- Animal Sounds ---');
  for (Animal animal in animals) {
    // Polymorphism: The correct speak() method is called based on
    // the actual object type (Dog or Cat), even though the loop
    // variable 'animal' is of type Animal.
    animal.speak();
  }
  print('-------------------');
}
```

**Explanation:**

1.  The `Animal`, `Dog`, and `Cat` classes are defined with `Dog` and `Cat` inheriting from `Animal` and overriding the `speak` method.
2.  A `List<Animal>` named `animals` is created. This list can hold any object whose type is `Animal` or a subclass of `Animal`.
3.  Instances of `Dog` and `Cat` are created and added to the list. Even though `dog1` is a `Dog`, it can be added to `List<Animal>` because `Dog` *is an* `Animal` (due to inheritance).
4.  The `for-in` loop iterates through the list. The variable `animal` is declared as type `Animal`.
5.  When `animal.speak()` is called inside the loop, Dart's runtime determines the *actual* type of the object stored in `animal` at that moment (e.g., is it *really* a `Dog` or a `Cat` instance?). It then calls the appropriate overridden `speak()` method for that specific type. This ability to treat objects of different subclass types uniformly (as `Animal`) while still invoking their specific behaviors is the essence of polymorphism.