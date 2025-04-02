Okay, here is a beginner Dart problem focusing on creating a simple class with methods, along with its solution.

---

**Problem Description**

**Topic:** Dart Classes and Objects

**Goal:** Create a basic `BankAccount` class to manage deposits and withdrawals, ensuring the balance never goes below zero.

**Requirements:**

1.  **Define the `BankAccount` Class:**
    *   It should have a single property: `balance` of type `double`. Initialize this property to `0.0` when an object is created.
2.  **Implement Methods:**
    *   `deposit(double amount)`: This method should accept a positive `double` amount and add it to the `balance`. Print a confirmation message. (Optional: Add validation to ensure the amount is positive).
    *   `withdraw(double amount)`: This method should accept a positive `double` amount. It should *only* subtract the amount from the `balance` if the `balance` is greater than or equal to the `amount`. If the withdrawal is successful, print a confirmation. If there are insufficient funds, print an error message and do *not* change the balance. (Optional: Add validation to ensure the amount is positive).
3.  **Use the Class:**
    *   In your `main` function, create an instance (object) of the `BankAccount` class.
    *   Perform a sequence of deposits and withdrawals (e.g., deposit 100, deposit 50, withdraw 75, attempt to withdraw 100).
    *   Print the final `balance` of the account.

---

**Solution Code**

```dart
// --- Solution Code ---

import 'dart:io'; // Not strictly needed for core logic, but good practice

// 1. Define the BankAccount Class
class BankAccount {
  // Property: balance initialized to 0.0
  double balance = 0.0;

  // Constructor (optional for this simple case, as default works)
  // BankAccount() {
  //   this.balance = 0.0; // Explicit initialization (already done above)
  // }

  // 2. Implement Methods

  /// Deposits a positive amount into the account.
  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be positive.');
      return; // Exit if amount is not valid
    }
    balance += amount;
    print('Deposited: \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
  }

  /// Withdraws a positive amount if funds are sufficient.
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
      return; // Exit if amount is not valid
    }

    if (balance >= amount) {
      balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Withdrawal failed: Insufficient funds. Tried to withdraw \$${amount.toStringAsFixed(2)}, but only \$${balance.toStringAsFixed(2)} available.');
    }
  }

  // Helper method to display balance (optional)
  void displayBalance() {
      print('Current balance: \$${balance.toStringAsFixed(2)}');
  }
}

// 3. Use the Class in the main function
void main() {
  print('Creating bank account...');
  // Create an instance of BankAccount
  var myAccount = BankAccount();

  // Display initial balance
  myAccount.displayBalance(); // Output: Current balance: $0.00

  print('\nPerforming transactions...');
  // Perform transactions
  myAccount.deposit(100.0);    // Output: Deposited: $100.00. New balance: $100.00
  myAccount.deposit(50.50);     // Output: Deposited: $50.50. New balance: $150.50
  myAccount.withdraw(75.0);   // Output: Withdrew: $75.00. New balance: $75.50
  myAccount.withdraw(-10.0);  // Output: Withdrawal amount must be positive.
  myAccount.withdraw(100.0);  // Output: Withdrawal failed: Insufficient funds...
  myAccount.deposit(-20.0);   // Output: Deposit amount must be positive.

  print('\nTransaction sequence complete.');
  // Print the final balance
  print('--- Final Account Status ---');
  myAccount.displayBalance(); // Output: Current balance: $75.50
}
```