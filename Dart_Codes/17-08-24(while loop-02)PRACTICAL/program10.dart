import "dart:io";

void main() {
  int rem = 0;
  int rev = 0;
  int n = int.parse(stdin.readLineSync()!);
  int palindrome = n;
  while (n > 0) {
    rem = n % 10;
    rev = rem + rev * 10;
    n = n ~/ 10;
  }
  if (palindrome == rev) {
    print("$palindrome is a palindrome");
  } else {
    print("$palindrome is not palindrome");
  }
}
