Okay, here is a beginner Dart problem focusing on logical operators, along with its solution.

---

**Problem Description**

**Title:** Event Eligibility Checker

**Goal:** Practice using Dart's logical operators (`&&`, `||`, `!`) and boolean variables to evaluate complex conditions.

**Scenario:** You are building a simple system to check if a person meets various criteria for attending a special event.

**Tasks:**

1.  **Define Variables:** Inside the `main` function, define the following boolean variables and assign them initial values:
    *   `isRegistered`: Set to `true`.
    *   `hasPaidFee`: Set to `false`.
    *   `isMember`: Set to `true`.
    *   `isEarlyBird`: Set to `false`.

2.  **Evaluate Expressions:** Create boolean variables to store the results of the following logical expressions:
    *   `canAttendStandard`: The person can attend if they are registered `AND` have paid the fee (`isRegistered && hasPaidFee`).
    *   `canAttendVIP`: The person can attend as a VIP if they are a member `AND` (they are registered `OR` they are an early bird) (`isMember && (isRegistered || isEarlyBird)`).
    *   `needsToPay`: The person needs to pay if they are registered `AND` have `NOT` paid the fee (`isRegistered && !hasPaidFee`).
    *   `canGetDiscount`: The person can get a discount if they are a member `OR` they are an early bird (`isMember || isEarlyBird`).
    *   `cannotAttend`: The person explicitly cannot attend if they are `NOT` registered (`!isRegistered`).

3.  **Print Results:** Print the initial variable values and the results of each evaluated expression clearly labeled.

---

**Dart Solution**

```dart
void main() {
  // 1. Define Variables
  bool isRegistered = true;
  bool hasPaidFee = false;
  bool isMember = true;
  bool isEarlyBird = false;

  // Print Initial Conditions
  print("--- Initial Conditions ---");
  print("Is Registered: $isRegistered");
  print("Has Paid Fee: $hasPaidFee");
  print("Is Member: $isMember");
  print("Is Early Bird: $isEarlyBird");
  print("\n--- Eligibility Checks ---"); // \n adds a newline for spacing

  // 2. Evaluate Expressions

  // Can attend if registered AND paid
  bool canAttendStandard = isRegistered && hasPaidFee;

  // Can attend VIP if member AND (registered OR early bird)
  // Parentheses are important here for order of operations!
  bool canAttendVIP = isMember && (isRegistered || isEarlyBird);

  // Needs to pay if registered AND NOT paid
  bool needsToPay = isRegistered && !hasPaidFee;

  // Can get discount if member OR early bird
  bool canGetDiscount = isMember || isEarlyBird;

  // Cannot attend if NOT registered
  bool cannotAttend = !isRegistered;


  // 3. Print Results
  print("1. Can Attend (Standard - Registered AND Paid)? $canAttendStandard");
  print("2. Can Attend (VIP - Member AND (Registered OR Early Bird))? $canAttendVIP");
  print("3. Needs To Pay (Registered AND NOT Paid)? $needsToPay");
  print("4. Can Get Discount (Member OR Early Bird)? $canGetDiscount");
  print("5. Cannot Attend (NOT Registered)? $cannotAttend");
}
```

**Explanation:**

1.  **Variables:** We declare four `bool` variables representing different states.
2.  **Expressions:**
    *   `&&` (Logical AND): Both conditions must be true for the result to be true.
    *   `||` (Logical OR): At least one condition must be true for the result to be true.
    *   `!` (Logical NOT): Inverts the boolean value (true becomes false, false becomes true).
    *   Parentheses `()`: Used to control the order of evaluation, just like in mathematics. Operations inside parentheses are evaluated first.
3.  **Printing:** The `print()` function displays the initial state and the calculated boolean results (`true` or `false`) for each condition check. String interpolation (`$variableName`) is used to easily include the variable values in the output strings.