Okay, here is a beginner Dart problem focused on classes, objects, and encapsulation, based on your description.

---

**Problem Description**

**Goal:** Implement a simple `BankAccount` class in Dart.

**Requirements:**

1.  **Define the `BankAccount` Class:**
    *   It should have a single **private** property named `_balance` of type `double`.
    *   Create a **constructor** that accepts an initial `double` value and uses it to initialize the `_balance`.
2.  **Implement Methods:**
    *   `deposit(double amount)`: A public method that takes a `double` amount and adds it to the `_balance`. For simplicity, assume the deposit amount is always positive.
    *   `withdraw(double amount)`: A public method that takes a `double` amount. It should subtract the amount from the `_balance` **only if** the `amount` is positive and there are sufficient funds (i.e., withdrawing the amount will not result in a negative balance). If the withdrawal is not possible due to insufficient funds or a non-positive amount, the balance should remain unchanged.
    *   `getBalance()`: A public **getter** method (or use Dart's getter syntax) that returns the current value of `_balance`.
3.  **Usage (in `main` function):**
    *   Create an instance of `BankAccount` with an initial balance (e.g., 100.0).
    *   Deposit some amount (e.g., 50.0).
    *   Withdraw a valid amount (e.g., 70.0).
    *   Attempt to withdraw an amount greater than the current balance (e.g., 100.0).
    *   Print the final balance using the `getBalance()` getter.

---

**Solution Code**

```dart
// Define the BankAccount class
class BankAccount {
  // Private property to store the balance
  double _balance;

  // Constructor to initialize the balance
  // Using 'this.' syntax for direct assignment
  BankAccount(this._balance) {
    print('Account created with initial balance: \$${_balance.toStringAsFixed(2)}');
  }

  // Public getter for the balance
  double get balance => _balance;
  // Alternatively, a traditional getter method:
  // double getBalance() {
  //   return _balance;
  // }

  // Public method to deposit funds
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive. Deposit ignored.');
    }
  }

  // Public method to withdraw funds
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive. Withdrawal ignored.');
      return; // Exit the method
    }

    if (amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Withdrawal failed: Insufficient funds. Tried to withdraw \$${amount.toStringAsFixed(2)}, but only \$${_balance.toStringAsFixed(2)} available.');
    }
  }
}

// Main function to demonstrate the BankAccount class
void main() {
  print('--- Starting Bank Account Simulation ---');

  // Create a BankAccount instance with an initial balance of 100.0
  BankAccount myAccount = BankAccount(100.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}'); // Using the getter
  print(''); // Add a blank line for readability

  // Deposit 50.0
  print('Attempting to deposit \$50.00...');
  myAccount.deposit(50.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');
  print('');

  // Withdraw 70.0 (valid)
  print('Attempting to withdraw \$70.00...');
  myAccount.withdraw(70.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');
  print('');

  // Attempt to withdraw 100.0 (invalid - insufficient funds)
  print('Attempting to withdraw \$100.00...');
  myAccount.withdraw(100.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');
  print('');

  // Attempt to withdraw a negative amount (invalid)
  print('Attempting to withdraw \$-20.00...');
  myAccount.withdraw(-20.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');
  print('');

  // Attempt to deposit a negative amount (invalid)
  print('Attempting to deposit \$-30.00...');
  myAccount.deposit(-30.0);
  print('Current balance: \$${myAccount.balance.toStringAsFixed(2)}');
  print('');

  // Print the final balance
  print('--- Simulation Ended ---');
  // Accessing balance using the getter `balance`
  print('Final Account Balance: \$${myAccount.balance.toStringAsFixed(2)}');
}
```

This solution defines the `BankAccount` class with encapsulation (`_balance`), provides methods for interaction (`deposit`, `withdraw`), includes a getter (`balance`), and demonstrates its usage within the `main` function, fulfilling all the requirements specified in the problem description.