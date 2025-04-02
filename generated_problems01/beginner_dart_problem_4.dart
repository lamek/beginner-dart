Okay, here is a beginner Dart problem focused on boolean variables and logical operators, along with its solution.

---

**Problem Description: Simple Boolean Logic Quiz**

**Goal:** Practice using boolean variables and logical operators (`&&`, `||`, `!`) in Dart.

**Scenario:**
Imagine you have information about the current situation represented by boolean variables:
*   `isDoorOpen`: Represents if a door is open (`true`) or closed (`false`).
*   `isLightOn`: Represents if a light is on (`true`) or off (`false`).
*   `isSafe`: Represents if the general situation is considered safe (`true`) or not (`false`).

**Tasks:**

1.  **Declare Variables:**
    *   Declare a boolean variable `isDoorOpen` and set it to `false`.
    *   Declare a boolean variable `isLightOn` and set it to `true`.
    *   Declare a boolean variable `isSafe` and set it to `true`.

2.  **Evaluate Conditions:** Create boolean expressions to answer the following questions:
    *   `canEnter`: Can someone enter? (This is true only if the door is open *and* the situation is safe).
    *   `roomIsLitOrSafe`: Is the room lit *or* is the situation safe?
    *   `isDoorClosed`: Is the door closed? (This is the opposite of `isDoorOpen`).
    *   `isSecure`: Is the situation secure? (This is true if the door is closed *and* the light is off *and* the situation is safe).

3.  **Print Results:** Print the initial states and the results of your evaluated conditions with descriptive labels.

---

**Dart Solution Code:**

```dart
void main() {
  // --- Task 1: Declare Variables ---
  bool isDoorOpen = false;
  bool isLightOn = true;
  bool isSafe = true;

  // --- Print Initial States ---
  print("--- Initial States ---");
  print("Is the door open? $isDoorOpen");   // Expected output: false
  print("Is the light on? $isLightOn");    // Expected output: true
  print("Is the situation safe? $isSafe"); // Expected output: true
  print(""); // Add a blank line for separation

  // --- Task 2: Evaluate Conditions ---

  // Can someone enter? (Door open AND safe)
  // false && true -> false
  bool canEnter = isDoorOpen && isSafe;

  // Is the room lit OR safe?
  // true || true -> true
  bool roomIsLitOrSafe = isLightOn || isSafe;

  // Is the door closed? (NOT door open)
  // !false -> true
  bool isDoorClosed = !isDoorOpen;

  // Is the situation secure? (Door closed AND light off AND safe)
  // We need 'light off' which is !isLightOn
  // !isDoorOpen && !isLightOn && isSafe
  // true && !true && true
  // true && false && true -> false
  bool isSecure = !isDoorOpen && !isLightOn && isSafe;


  // --- Task 3: Print Results ---
  print("--- Evaluated Conditions ---");
  print("Can someone enter? (isDoorOpen && isSafe): $canEnter");             // Expected output: false
  print("Is the room lit OR safe? (isLightOn || isSafe): $roomIsLitOrSafe"); // Expected output: true
  print("Is the door closed? (!isDoorOpen): $isDoorClosed");                // Expected output: true
  print("Is the situation secure? (!isDoorOpen && !isLightOn && isSafe): $isSecure"); // Expected output: false
}
```

---