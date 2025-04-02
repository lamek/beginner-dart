Okay, here is a beginner Dart problem focused on classes, inheritance, and polymorphism within an E-commerce context, followed by its solution.

---

**Problem Description**

**Goal:** Model different types of products in an e-commerce system using Dart classes, inheritance, and polymorphism.

**Requirements:**

1.  **Base Class (`Product`):**
    *   Create an abstract class named `Product`.
    *   It should have the following attributes (instance variables):
        *   `productId` (String)
        *   `name` (String)
        *   `price` (double)
    *   It should have a constructor to initialize these attributes.
    *   It should have an abstract method `displayDetails()` that takes no arguments and returns `void`. This method will be responsible for printing the product's details.

2.  **Subclass (`Electronics`):**
    *   Create a class named `Electronics` that **inherits** from `Product`.
    *   Add the following unique attributes:
        *   `brand` (String)
        *   `warrantyPeriod` (int, representing months)
    *   Implement a constructor that initializes both the `Product` attributes (using `super`) and the `Electronics` specific attributes.
    *   **Override** the `displayDetails()` method to print all details for an electronic product (including `productId`, `name`, `price`, `brand`, and `warrantyPeriod`).

3.  **Subclass (`Clothing`):**
    *   Create a class named `Clothing` that **inherits** from `Product`.
    *   Add the following unique attributes:
        *   `size` (String, e.g., "M", "L", "XL")
        *   `color` (String)
    *   Implement a constructor that initializes both the `Product` attributes (using `super`) and the `Clothing` specific attributes.
    *   **Override** the `displayDetails()` method to print all details for a clothing item (including `productId`, `name`, `price`, `size`, and `color`).

4.  **Demonstration (`main` function):**
    *   In your `main` function:
        *   Create at least one instance (object) of `Electronics`.
        *   Create at least one instance (object) of `Clothing`.
        *   Create a `List` that can hold `Product` objects.
        *   Add the created `Electronics` and `Clothing` objects to this list.
        *   Iterate through the list and call the `displayDetails()` method on each product. Observe how polymorphism allows the correct specific `displayDetails` method to be called for each object type.

---

**Solution Code**

```dart
// Base abstract class Product
abstract class Product {
  String productId;
  String name;
  double price;

  // Constructor for Product
  Product(this.productId, this.name, this.price);

  // Abstract method to be implemented by subclasses
  void displayDetails();
}

// Subclass Electronics inheriting from Product
class Electronics extends Product {
  String brand;
  int warrantyPeriod; // in months

  // Constructor for Electronics
  // Calls the superclass (Product) constructor using 'super'
  Electronics(String productId, String name, double price, this.brand, this.warrantyPeriod)
      : super(productId, name, price);

  // Override the displayDetails method for Electronics
  @override
  void displayDetails() {
    print("--- Electronic Product ---");
    print("ID: $productId");
    print("Name: $name");
    print("Price: \$${price.toStringAsFixed(2)}"); // Format price to 2 decimal places
    print("Brand: $brand");
    print("Warranty: $warrantyPeriod months");
    print("------------------------");
  }
}

// Subclass Clothing inheriting from Product
class Clothing extends Product {
  String size;
  String color;

  // Constructor for Clothing
  // Calls the superclass (Product) constructor using 'super'
  Clothing(String productId, String name, double price, this.size, this.color)
      : super(productId, name, price);

  // Override the displayDetails method for Clothing
  @override
  void displayDetails() {
    print("----- Clothing Item -----");
    print("ID: $productId");
    print("Name: $name");
    print("Price: \$${price.toStringAsFixed(2)}"); // Format price to 2 decimal places
    print("Size: $size");
    print("Color: $color");
    print("-----------------------");
  }
}

// Main function to demonstrate usage
void main() {
  // Create instances of specific product types
  Electronics laptop = Electronics("ELEC001", "Laptop Pro", 1299.99, "TechBrand", 24);
  Clothing shirt = Clothing("CLTH001", "Casual T-Shirt", 25.50, "L", "Blue");
  Electronics phone = Electronics("ELEC002", "Smartphone X", 899.00, "MobileCorp", 12);

  // Create a list of Product type (Polymorphism)
  List<Product> products = [];
  products.add(laptop);
  products.add(shirt);
  products.add(phone);

  // Iterate through the list and display details
  print("Displaying all products in the list:\n");
  for (Product product in products) {
    // The correct displayDetails method is called based on the actual object type
    product.displayDetails();
  }
}
```