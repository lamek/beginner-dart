Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, themed around a simple library system.

---

## Dart Problem: Simple Library System

**Level:** Beginner

**Concepts:** Classes, Objects, Inheritance, Polymorphism, Lists, Basic Control Flow

**Problem Description:**

You are tasked with creating a simple command-line library system. The system needs to manage different types of library assets (though we'll start with just Books) and allow them to be checked out and returned.

**Requirements:**

1.  **`LibraryAsset` Base Class:**
    *   Create an `abstract` class named `LibraryAsset`.
    *   It should have properties:
        *   `title` (String)
        *   `isAvailable` (bool, defaulting to `true`)
    *   It should have a constructor that accepts the `title`.
    *   It should have the following methods:
        *   `checkout()`: If the asset is available (`isAvailable` is true), it should set `isAvailable` to `false` and print a confirmation message (e.g., "[title] has been checked out."). If it's already checked out, it should print a message indicating that (e.g., "[title] is already checked out.").
        *   `returnAsset()`: If the asset is not available (`isAvailable` is false), it should set `isAvailable` to `true` and print a confirmation message (e.g., "[title] has been returned."). If it's already available, it should print a message indicating that (e.g., "[title] is already available.").
        *   `displayDetails()`: An `abstract` method (no implementation in this class) that subclasses will override to display their specific details.

2.  **`Book` Class:**
    *   Create a class named `Book` that **inherits** from `LibraryAsset`.
    *   It should have an additional property:
        *   `author` (String)
    *   Its constructor should accept `title` and `author`, and call the `super` constructor for the `title`.
    *   It should **override** the `displayDetails()` method to print the book's title, author, and availability status (e.g., "Title: [title], Author: [author], Status: [Available/Checked Out]").

3.  **`Library` Class:**
    *   Create a class named `Library`.
    *   It should have properties:
        *   `name` (String)
        *   `assets` (a `List` to hold `LibraryAsset` objects)
    *   Its constructor should accept the `name` and initialize the `assets` list as empty.
    *   It should have the following methods:
        *   `addAsset(LibraryAsset asset)`: Adds the given `LibraryAsset` to the `assets` list.
        *   `checkoutAssetByTitle(String title)`: Finds the `LibraryAsset` in the `assets` list with the matching `title`. If found, it calls the asset's `checkout()` method. If not found, it prints an error message (e.g., "Asset with title '[title]' not found.").
        *   `returnAssetByTitle(String title)`: Finds the `LibraryAsset` in the `assets` list with the matching `title`. If found, it calls the asset's `returnAsset()` method. If not found, it prints an error message.
        *   `displayAvailableAssets()`: Iterates through the `assets` list. For each asset where `isAvailable` is true, it calls the asset's `displayDetails()` method. This demonstrates **polymorphism** because `displayDetails` will behave differently depending on the actual type of the asset (e.g., `Book`).

4.  **`main` Function:**
    *   Create a `main` function to demonstrate the system.
    *   Create a `Library` instance.
    *   Create a few `Book` instances.
    *   Add the books to the library.
    *   Display the available assets.
    *   Check out a book.
    *   Try to check out the same book again.
    *   Display the available assets again.
    *   Return the checked-out book.
    *   Display the available assets one last time.
    *   Try to return a book that is already available.
    *   Try to check out a book title that doesn't exist in the library.

---

## Dart Solution

```dart
import 'dart:io'; // Not strictly needed for core logic, but good practice

// 1. LibraryAsset Base Class (Abstract)
abstract class LibraryAsset {
  String title;
  bool isAvailable;

  // Constructor
  LibraryAsset(this.title) : isAvailable = true;

  // Method to check out the asset
  void checkout() {
    if (isAvailable) {
      isAvailable = false;
      print('"$title" has been checked out.');
    } else {
      print('"$title" is already checked out.');
    }
  }

  // Method to return the asset
  void returnAsset() {
    if (!isAvailable) {
      isAvailable = true;
      print('"$title" has been returned.');
    } else {
      print('"$title" is already available.');
    }
  }

  // Abstract method for displaying details - must be implemented by subclasses
  void displayDetails();
}

// 2. Book Class (Inherits from LibraryAsset)
class Book extends LibraryAsset {
  String author;

  // Constructor - calls the superclass constructor for title
  Book(String title, this.author) : super(title);

  // Override displayDetails to include author and status
  @override
  void displayDetails() {
    String status = isAvailable ? 'Available' : 'Checked Out';
    print('Title: "$title", Author: $author, Status: $status');
  }
}

// 3. Library Class
class Library {
  String name;
  List<LibraryAsset> assets;

  // Constructor
  Library(this.name) : assets = []; // Initialize with an empty list

  // Method to add an asset to the library
  void addAsset(LibraryAsset asset) {
    assets.add(asset);
    print('Added "${asset.title}" to the $name library.');
  }

  // Method to find and checkout an asset by title
  void checkoutAssetByTitle(String title) {
    try {
      // Find the asset using firstWhere - throws StateError if not found
      var assetToCheckout = assets.firstWhere((asset) => asset.title == title);
      assetToCheckout.checkout(); // Call the asset's checkout method
    } on StateError {
      print('Error: Asset with title "$title" not found in the library.');
    }
  }

  // Method to find and return an asset by title
  void returnAssetByTitle(String title) {
     try {
      // Find the asset using firstWhere
      var assetToReturn = assets.firstWhere((asset) => asset.title == title);
      assetToReturn.returnAsset(); // Call the asset's returnAsset method
    } on StateError {
      print('Error: Asset with title "$title" not found in the library.');
    }
  }

  // Method to display details of all available assets (Polymorphism in action)
  void displayAvailableAssets() {
    print('\n--- Available Assets in $name ---');
    bool foundAvailable = false;
    for (var asset in assets) {
      if (asset.isAvailable) {
        asset.displayDetails(); // Calls the specific implementation (e.g., Book's)
        foundAvailable = true;
      }
    }
    if (!foundAvailable) {
        print('No assets are currently available.');
    }
    print('----------------------------------');
  }

  // Optional: Method to display all assets, regardless of status
  void displayAllAssets() {
    print('\n--- All Assets in $name ---');
     if (assets.isEmpty) {
        print('The library has no assets.');
     } else {
        for (var asset in assets) {
            asset.displayDetails();
        }
     }
    print('-----------------------------');
  }
}

// 4. Main Function (Demonstration)
void main() {
  // Create a library
  var cityLibrary = Library('City Central Library');
  print('Created library: ${cityLibrary.name}');

  // Create some books
  var book1 = Book('The Hobbit', 'J.R.R. Tolkien');
  var book2 = Book('1984', 'George Orwell');
  var book3 = Book('Pride and Prejudice', 'Jane Austen');

  // Add books to the library
  cityLibrary.addAsset(book1);
  cityLibrary.addAsset(book2);
  cityLibrary.addAsset(book3);

  // Display available assets
  cityLibrary.displayAvailableAssets();

  // Checkout a book
  print('\n--- Checking out a book ---');
  cityLibrary.checkoutAssetByTitle('1984');

  // Try to checkout the same book again
  print('\n--- Trying to checkout the same book again ---');
  cityLibrary.checkoutAssetByTitle('1984');

  // Display available assets again
  cityLibrary.displayAvailableAssets();

  // Return the book
  print('\n--- Returning a book ---');
  cityLibrary.returnAssetByTitle('1984');

   // Try to return the same book again (now available)
  print('\n--- Trying to return the book again ---');
  cityLibrary.returnAssetByTitle('1984');

  // Display available assets one last time
  cityLibrary.displayAvailableAssets();

  // Try to checkout a non-existent book
  print('\n--- Trying to checkout a non-existent book ---');
  cityLibrary.checkoutAssetByTitle('Moby Dick');

  // Optional: Display all assets
  // cityLibrary.displayAllAssets();
}
```