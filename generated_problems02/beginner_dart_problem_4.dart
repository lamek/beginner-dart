Okay, here is a beginner Dart problem focused on boolean variables and logical operators.

---

### Problem Description

**Dart Beginner Problem: Simple Logic Check**

**Objective:** Practice using boolean variables and logical operators (`&&`, `||`, `!`) in Dart.

**Scenario:** You are deciding what to do based on simple conditions.

**Tasks:**

1.  **Declare Variables:**
    *   Create a boolean variable named `isWeekend` and set it to `true`.
    *   Create a boolean variable named `isSunny` and set it to `false`.
    *   Create a boolean variable named `haveHomework` and set it to `true`.

2.  **Evaluate Conditions:**
    *   Create a boolean expression to determine if you can `goToPark`. You can go to the park if it's the weekend **AND** it's sunny. Store the result in a variable called `canGoToPark`.
    *   Create a boolean expression to determine if you should `relax`. You can relax if it's the weekend **AND** you **DO NOT** have homework. Store the result in a variable called `shouldRelax`.
    *   Create a boolean expression to determine if you must `study`. You must study if it's **NOT** the weekend **OR** you have homework. Store the result in a variable called `mustStudy`.

3.  **Print Results:**
    *   Print the initial state of `isWeekend`, `isSunny`, and `haveHomework`.
    *   Print the calculated results for `canGoToPark`, `shouldRelax`, and `mustStudy`, including descriptive labels for each output.

---

### Dart Solution

```dart
void main() {
  // --- Task 1: Declare Variables ---
  bool isWeekend = true;
  bool isSunny = false;
  bool haveHomework = true;

  // --- Print Initial States ---
  print("--- Initial Conditions ---");
  print("Is it the weekend? $isWeekend");
  print("Is it sunny? $isSunny");
  print("Do I have homework? $haveHomework");
  print(""); // Add a blank line for separation

  // --- Task 2: Evaluate Conditions ---

  // Can go to the park if it's the weekend AND it's sunny
  bool canGoToPark = isWeekend && isSunny;

  // Should relax if it's the weekend AND you DO NOT have homework
  // !haveHomework means "not haveHomework"
  bool shouldRelax = isWeekend && !haveHomework;

  // Must study if it's NOT the weekend OR you have homework
  // !isWeekend means "not isWeekend"
  bool mustStudy = !isWeekend || haveHomework;

  // --- Task 3: Print Results ---
  print("--- Calculated Decisions ---");
  print("Can I go to the park? (isWeekend AND isSunny): $canGoToPark");
  print("Should I relax? (isWeekend AND NOT haveHomework): $shouldRelax");
  print("Must I study? (NOT isWeekend OR haveHomework): $mustStudy");
}
```

**Explanation:**

1.  **Variable Declaration:** We declare three `bool` variables and assign them initial `true` or `false` values.
2.  **Logical Expressions:**
    *   `canGoToPark`: Uses `&&` (AND). Both `isWeekend` (`true`) and `isSunny` (`false`) must be true. Since `isSunny` is false, the result is `false`.
    *   `shouldRelax`: Uses `&&` (AND) and `!` (NOT). `isWeekend` (`true`) must be true, and `!haveHomework` (NOT `true`, which is `false`) must also be true. Since `!haveHomework` is false, the result is `false`.
    *   `mustStudy`: Uses `!` (NOT) and `||` (OR). `!isWeekend` (NOT `true`, which is `false`) or `haveHomework` (`true`) must be true. Since `haveHomework` is true, the result is `true`.
3.  **Printing:** The `print()` function is used to display the values of the variables and the results of the expressions, along with descriptive text using string interpolation (`$variableName`).