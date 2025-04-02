Okay, here is a beginner Dart problem focusing on classes, inheritance, and polymorphism, along with its solution.

---

### Problem Description

**Objective:** Model different types of bank accounts using classes, inheritance, and polymorphism in Dart.

**Requirements:**

1.  **`BankAccount` Base Class:**
    *   Create a class named `BankAccount`.
    *   It should have properties for `accountHolder` (String), `accountNumber` (String), and `balance` (double).
    *   Initialize the `balance` to `0.0` by default if not provided.
    *   Implement a `deposit(double amount)` method:
        *   It should only accept positive amounts. Print an error message if the amount is not positive.
        *   If the amount is positive, add it to the `balance` and print a confirmation message including the new balance.
    *   Implement a `withdraw(double amount)` method:
        *   It should only accept positive amounts. Print an error message if the amount is not positive.
        *   It should check if there are sufficient funds (`balance >= amount`).
        *   If funds are sufficient and the amount is positive, subtract the amount from the `balance` and print a confirmation message including the new balance.
        *   If funds are insufficient, print an error message indicating insufficient funds and show the current balance.
    *   Override the `toString()` method to return a string representation of the account details (holder, number, balance).

2.  **`SavingsAccount` Subclass:**
    *   Create a class named `SavingsAccount` that **inherits** from `BankAccount`.
    *   Add a property `interestRate` (double, e.g., 0.02 for 2%).
    *   The constructor should accept `accountHolder`, `accountNumber`, `interestRate`, and an optional `initialBalance`, passing the relevant values to the `super` constructor.
    *   Implement a method `addInterest()`:
        *   Calculates the interest amount (`balance * interestRate`).
        *   Uses the inherited `deposit()` method to add the calculated interest to the balance.
    *   **Override** the `withdraw(double amount)` method (**Polymorphism**):
        *   Add a fixed `withdrawalFee` (e.g., `2.0`).
        *   Check if the `balance` is sufficient to cover *both* the requested `amount` and the `withdrawalFee`.
        *   If sufficient, deduct *both* the `amount` and the `withdrawalFee` from the balance. Print a confirmation message showing the amount withdrawn, the fee, and the new balance.
        *   If insufficient, print an appropriate error message.
        *   Ensure the withdrawal amount itself is positive.
    *   Override the `toString()` method to include the interest rate along with the base class details.

3.  **`main` Function Demonstration:**
    *   In the `main` function:
        *   Create an instance of `BankAccount`.
        *   Create an instance of `SavingsAccount`.
        *   Perform several `deposit` and `withdraw` operations on both accounts to test the logic (including trying to overdraw).
        *   Call `addInterest()` on the `SavingsAccount` instance.
        *   Create a `List<BankAccount>` containing both account objects.
        *   Iterate through the list and print the details of each account using the `toString()` method (demonstrating polymorphism).
        *   Iterate through the list again and call the `withdraw(10.0)` method on each account (demonstrating polymorphic method calls). Print the account details again after this operation.

---

### Solution Code

```dart
import 'dart:math'; // Not strictly needed, but good practice if doing complex math

// Base Class
class BankAccount {
  String accountHolder;
  String accountNumber;
  double balance;

  // Constructor with default balance
  BankAccount(this.accountHolder, this.accountNumber, {this.balance = 0.0});

  // Deposit method
  void deposit(double amount) {
    if (amount <= 0) {
      print('Error: Deposit amount must be positive.');
      return;
    }
    balance += amount;
    print('Deposited \$${amount.toStringAsFixed(2)}. New Balance: \$${balance.toStringAsFixed(2)}');
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be positive.');
      return;
    }
    if (balance >= amount) {
      balance -= amount;
      print('Withdrew \$${amount.toStringAsFixed(2)}. New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Error: Insufficient funds. Available: \$${balance.toStringAsFixed(2)}, Tried to withdraw: \$${amount.toStringAsFixed(2)}');
    }
  }

  // Override toString for basic account info
  @override
  String toString() {
    return 'BankAccount[Holder: $accountHolder, #: $accountNumber, Balance: \$${balance.toStringAsFixed(2)}]';
  }
}

// Derived Class (Subclass)
class SavingsAccount extends BankAccount {
  double interestRate;
  final double withdrawalFee = 2.00; // Fixed withdrawal fee

  // Constructor calling super constructor
  SavingsAccount(String accountHolder, String accountNumber, this.interestRate, {double initialBalance = 0.0})
      : super(accountHolder, accountNumber, balance: initialBalance);

  // Method specific to SavingsAccount
  void addInterest() {
    double interest = balance * interestRate;
    print('Calculating interest: \$${interest.toStringAsFixed(2)}');
    deposit(interest); // Use inherited deposit method
  }

  // Override withdraw method to include a fee (Polymorphism)
  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be positive.');
      return;
    }

    double totalDeduction = amount + withdrawalFee;
    if (balance >= totalDeduction) {
      balance -= totalDeduction;
      print('Withdrew \$${amount.toStringAsFixed(2)} (Fee: \$${withdrawalFee.toStringAsFixed(2)}). New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Error: Insufficient funds for withdrawal + fee. Available: \$${balance.toStringAsFixed(2)}, Needed: \$${totalDeduction.toStringAsFixed(2)}');
    }
  }

  // Override toString to include interest rate
  @override
  String toString() {
    // Call super.toString() or manually format including inherited properties
     return 'SavingsAccount[Holder: $accountHolder, #: $accountNumber, Balance: \$${balance.toStringAsFixed(2)}, Interest Rate: ${(interestRate * 100).toStringAsFixed(1)}%]';
  }
}

// Main function for demonstration
void main() {
  print('--- Creating Accounts ---');
  BankAccount checking = BankAccount('Alice Wonderland', 'CHK-001');
  SavingsAccount savings = SavingsAccount('Bob The Builder', 'SAV-002', 0.03, initialBalance: 100.0); // 3% interest, starts with $100

  print(checking);
  print(savings);
  print('\n--- Basic Operations ---');

  checking.deposit(200.0);
  savings.deposit(500.0);
  print('');

  checking.withdraw(50.0);
  savings.withdraw(100.0); // This will incur a $2 fee
  print('');

  print('--- Testing Edge Cases ---');
  checking.deposit(-30); // Invalid deposit
  checking.withdraw(300.0); // Insufficient funds
  savings.withdraw(550); // Insufficient funds (needs 550 + 2 fee)
  print('');

  print('--- Savings Account Specific ---');
  savings.addInterest();
  print(savings);
  print('');


  print('\n--- Polymorphism Demonstration ---');
  List<BankAccount> accounts = [checking, savings]; // List of base type

  print('--- Printing details using polymorphism ---');
  for (var account in accounts) {
    print(account); // Calls the appropriate toString() method
  }

  print('\n--- Calling withdraw(10.0) polymorphically ---');
  for (var account in accounts) {
    print('Withdrawing from Account ${account.accountNumber}:');
    account.withdraw(10.0); // Calls BankAccount.withdraw for checking, SavingsAccount.withdraw for savings
    print(account); // Print updated details
    print('---');
  }
}
```