Okay, here is a beginner Dart problem focusing on classes, objects, inheritance, and polymorphism, along with its solution.

---

**Problem Description**

**Goal:** Model different types of bank accounts using object-oriented principles in Dart.

**Requirements:**

1.  **`BankAccount` Class (Base Class):**
    *   Create a class named `BankAccount`.
    *   It should have the following attributes:
        *   `ownerName` (String): The name of the account holder. Should be initialized in the constructor and cannot be changed afterwards.
        *   `_balance` (double): The current balance. Should be private to the class but accessible by subclasses. Initialize it in the constructor (default to 0.0 if no initial balance is provided).
    *   It should have a public getter method `balance` to read the current balance.
    *   It should have the following methods:
        *   `deposit(double amount)`: Adds the specified amount to the balance. Should print an error message if the amount is negative.
        *   `withdraw(double amount)`: Subtracts the specified amount from the balance. Should print an error message if the amount is negative or if there are insufficient funds.
        *   Override the `toString()` method to return a string representation like: `"Account Owner: [Name], Balance: $[Balance]"`.

2.  **`SavingsAccount` Class (Subclass):**
    *   Create a class named `SavingsAccount` that **inherits** from `BankAccount`.
    *   It should have an additional attribute:
        *   `interestRate` (double): The annual interest rate (e.g., 0.02 for 2%).
    *   Its constructor should accept `ownerName`, an optional `initialBalance`, and the `interestRate`. It must call the `BankAccount` constructor.
    *   It should have an additional method:
        *   `applyInterest()`: Calculates the interest earned (`_balance * interestRate`) and deposits it into the account using the `deposit` method.
    *   Override the `toString()` method to include the interest rate: `"Account Owner: [Name], Balance: $[Balance], Interest Rate: [Rate]%"` (Hint: You can call the `super.toString()` method).

3.  **`main` Function (Demonstration):**
    *   In your `main` function:
        *   Create an instance of `BankAccount`.
        *   Create an instance of `SavingsAccount`.
        *   Perform some deposits and withdrawals on both accounts.
        *   Demonstrate **polymorphism**: Create a `List<BankAccount>` and add both account objects to it. Iterate through the list and print the details of each account using the `toString()` method (notice how the correct `toString()` is called for each object type).
        *   Call the `applyInterest()` method specifically on the `SavingsAccount` object. Print its details again to show the updated balance.

---

**Solution Code**

```dart
import 'dart:math'; // Used for max function in withdrawal

// Base Class: BankAccount
class BankAccount {
  final String ownerName; // Cannot be changed after initialization
  double _balance;       // Private but accessible within the library (and subclasses)

  // Constructor with optional initial balance
  BankAccount(this.ownerName, {double initialBalance = 0.0})
      : _balance = max(0, initialBalance); // Ensure balance isn't negative initially

  // Public getter for balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount < 0) {
      print("Error: Cannot deposit a negative amount.");
    } else {
      _balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount < 0) {
      print("Error: Cannot withdraw a negative amount.");
    } else if (amount > _balance) {
      print("Error: Insufficient funds. Available: \$${_balance.toStringAsFixed(2)}, Tried to withdraw: \$${amount.toStringAsFixed(2)}");
    } else {
      _balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}");
    }
  }

  // Override toString for better object representation
  @override
  String toString() {
    return "Account Owner: $ownerName, Balance: \$${_balance.toStringAsFixed(2)}";
  }
}

// Subclass: SavingsAccount inheriting from BankAccount
class SavingsAccount extends BankAccount {
  final double interestRate; // e.g., 0.02 for 2%

  // Constructor calling the superclass constructor
  SavingsAccount(String ownerName, this.interestRate, {double initialBalance = 0.0})
      : super(ownerName, initialBalance: initialBalance);

  // Method specific to SavingsAccount
  void applyInterest() {
    if (_balance > 0 && interestRate > 0) {
      double interestEarned = _balance * interestRate;
      print("Applying interest ($interestRate)... Earned: \$${interestEarned.toStringAsFixed(2)}");
      // Use the deposit method inherited from BankAccount
      deposit(interestEarned);
    } else {
       print("No interest applied (balance or rate is zero/negative).");
    }
  }

  // Override toString to include interest rate, calling super.toString()
  @override
  String toString() {
    // Extract base info using super.toString() or access inherited properties
    // String baseInfo = super.toString(); // Option 1
    String baseInfo = "Account Owner: $ownerName, Balance: \$${_balance.toStringAsFixed(2)}"; // Option 2
    return "$baseInfo, Interest Rate: ${(interestRate * 100).toStringAsFixed(2)}%";
  }
}

// Main function to demonstrate usage
void main() {
  print("--- Creating Accounts ---");
  BankAccount regularAccount = BankAccount("Alice Smith", initialBalance: 500.0);
  SavingsAccount savings = SavingsAccount("Bob Johnson", 0.03, initialBalance: 1000.0); // 3% interest rate

  print(regularAccount); // Calls BankAccount.toString()
  print(savings);       // Calls SavingsAccount.toString()
  print("\n--- Performing Transactions ---");

  regularAccount.deposit(200);
  regularAccount.withdraw(100);
  regularAccount.withdraw(700); // Insufficient funds attempt

  print(""); // Newline for clarity

  savings.deposit(500);
  savings.withdraw(200);
  savings.withdraw(-50);  // Negative amount attempt

  print("\n--- Polymorphism Demonstration ---");
  // List capable of holding any BankAccount or its subclasses
  List<BankAccount> accounts = [regularAccount, savings];

  print("Iterating through accounts list:");
  for (var account in accounts) {
    print(account); // Dynamically calls the correct toString() based on the object's actual type
    account.deposit(50.0); // Call method common to all BankAccounts
    print("-----");
  }

  print("\n--- Savings Account Specific Action ---");
  print("Applying interest to Savings Account:");
  // We know 'savings' is a SavingsAccount, so we can call its specific method
  savings.applyInterest();
  print(savings); // Show updated balance after interest

  // Example of needing type check/cast if using the list variable:
  // for (var account in accounts) {
  //   if (account is SavingsAccount) {
  //     account.applyInterest(); // Safe to call after checking type
  //   }
  // }
}
```