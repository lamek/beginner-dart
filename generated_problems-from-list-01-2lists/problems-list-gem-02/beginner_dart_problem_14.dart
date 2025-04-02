Okay, here is a beginner Dart problem focused on `switch` statements for a traffic light simulation, along with its solution.

---

**Problem Description: Traffic Light Action**

**Goal:** Write a Dart program that simulates the action a driver should take based on the color of a traffic light.

**Requirements:**

1.  Declare a `String` variable named `lightColor`. You can initialize it with one of the following values: `"red"`, `"yellow"`, or `"green"`.
2.  Use a `switch` statement to check the value of `lightColor`.
3.  Based on the color, print the corresponding action to the console:
    *   If `lightColor` is `"red"`, print `"Stop"`.
    *   If `lightColor` is `"yellow"`, print `"Caution"`.
    *   If `lightColor` is `"green"`, print `"Go"`.
4.  Include a `default` case in your `switch` statement that prints `"Invalid light color."` if `lightColor` does not match any of the expected values.
5.  Test your code by changing the initial value of `lightColor` to see all possible outputs.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Declare and initialize the lightColor variable.
  // Try changing this value to "red", "yellow", "blue", etc. to test.
  String lightColor = "green"; 

  // Variable to hold the action message
  String action;

  // 2. Use a switch statement to determine the action based on lightColor.
  switch (lightColor) {
    case "red":
      // 3. Action for "red"
      action = "Stop";
      break; // Exit the switch statement

    case "yellow":
      // 3. Action for "yellow"
      action = "Caution";
      break; // Exit the switch statement

    case "green":
      // 3. Action for "green"
      action = "Go";
      break; // Exit the switch statement

    default:
      // 4. Handle invalid colors
      action = "Invalid light color.";
      // 'break;' is optional here as it's the last case, but good practice.
      break; 
  }

  // Print the result
  print("The traffic light is $lightColor.");
  print("Action: $action"); 
}
```

---