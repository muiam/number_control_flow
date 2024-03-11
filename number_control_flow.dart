import 'dart:io';

void main() {
  print('Please enter a number:');

  // Reading the input from the user.
  String? input = stdin.readLineSync();

  // Attempting to parse the input string to an integer.
  int? number =
      int.tryParse(input ?? ''); // Using ?? '' to handle null input safely.

  // Check if parsing was successful.
  if (number == null) {
    print('You did not enter a valid number.');
    return; // Exit the program if the input is not a valid integer.
  }

  // Comparing the number and printing the respective message.
  if (number > 10) {
    print('Your number is greater than 10');
  } else if (number < 10) {
    print('Your number is less than 10');
  } else {
    print('Your number is equal to 10');
  }
}
