Okay, here is a beginner Dart problem focusing on Classes and Objects based on your description, followed by its solution.

---

**Problem Description**

**Title:** Basic Bank Account Management

**Concept Focus:** Classes, Objects, Methods, State Management

**Task:**

1.  **Create a Class:** Define a Dart class named `BankAccount`.
2.  **Add Property:** Inside the `BankAccount` class, declare a `double` property named `balance`. Initialize it to `0.0`.
3.  **Implement `deposit` Method:** Add a method `deposit(double amount)` to the class. This method should:
    *   Check if the `amount` is positive.
    *   If positive, add the `amount` to the `balance`.
    *   Print a confirmation message (e.g., "Deposited: $amount. New balance: $balance").
    *   If not positive, print an error message (e.g., "Deposit amount must be positive.").
4.  **Implement `withdraw` Method:** Add a method `withdraw(double amount)` to the class. This method should:
    *   Check if the `amount` is positive.
    *   Check if there are sufficient funds (`amount <= balance`).
    *   If both conditions are true, subtract the `amount` from the `balance`.
    *   Print a confirmation message (e.g., "Withdrew: $amount. New balance: $balance").
    *   If the `amount` is not positive, print an error message.
    *   If there are insufficient funds, print a different error message (e.g., "Withdrawal failed: Insufficient funds.") and *do not* change the balance.
5.  **Use the Class:** In your `main` function:
    *   Create an instance (object) of the `BankAccount` class.
    *   Print the initial balance.
    *   Perform a sequence of operations:
        *   Deposit $100.00
        *   Deposit $50.50
        *   Withdraw $75.00
        *   Attempt to withdraw $100.00 (should fail due to insufficient funds)
        *   Deposit $20.00
        *   Withdraw $80.00
    *   Print the final balance of the account.

---

**Solution Code**

```dart
import 'dart:io'; // Not strictly necessary for this logic, but good practice

// 1. Create a Class: BankAccount
class BankAccount {
  // 2. Add Property: balance (initialized to 0.0)
  double balance = 0.0;

  // Constructor (optional, as default constructor works with initialization)
  BankAccount() {
    // balance is already initialized above
    print('Bank account created. Initial balance: \$${balance.toStringAsFixed(2)}');
  }

  // 3. Implement deposit Method
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Deposit error: Amount must be positive. Tried to deposit: \$${amount.toStringAsFixed(2)}');
    }
  }

  // 4. Implement withdraw Method
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal error: Amount must be positive. Tried to withdraw: \$${amount.toStringAsFixed(2)}');
    } else if (amount <= balance) {
      balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Withdrawal failed: Insufficient funds. Tried to withdraw \$${amount.toStringAsFixed(2)}, but only \$${balance.toStringAsFixed(2)} available.');
    }
  }
}

// 5. Use the Class in the main function
void main() {
  print('--- Starting Bank Account Simulation ---');

  // Create an instance (object) of BankAccount
  BankAccount myAccount = BankAccount();

  // Print initial balance (already printed by constructor, but can access directly too)
  // print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');

  print('\n--- Performing Transactions ---');
  // Perform a sequence of operations
  myAccount.deposit(100.00);
  myAccount.deposit(50.50);
  myAccount.withdraw(75.00);
  myAccount.withdraw(100.00); // This should fail
  myAccount.deposit(20.00);
  myAccount.withdraw(80.00);
  myAccount.deposit(-10.00); // Test invalid deposit
  myAccount.withdraw(-5.00);  // Test invalid withdrawal

  print('\n--- Simulation Finished ---');
  // Print the final balance
  // Using \ enhances readability by escaping the $ for string interpolation
  print('Final account balance: \$${myAccount.balance.toStringAsFixed(2)}');
}
```

**Explanation:**

1.  The `BankAccount` class bundles the `balance` data and the `deposit`/`withdraw` operations that act on that data.
2.  The `balance` property holds the state of the account.
3.  The `deposit` method increases the balance, but only for valid positive amounts.
4.  The `withdraw` method decreases the balance, but includes checks for positive amounts and sufficient funds, preventing the balance from becoming negative due to a withdrawal.
5.  The `main` function demonstrates how to create an object (`myAccount`) from the class blueprint and call its methods to simulate transactions, showing how the object's state (`balance`) changes over time.
6.  `toStringAsFixed(2)` is used to format the double values nicely as currency (e.g., 100.50 instead of 100.5).