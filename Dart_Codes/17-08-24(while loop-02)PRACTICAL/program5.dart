import "dart:io";

void main() {
  int fact = 1;
  print("Enter  number:");
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    fact = fact * n;
    n--;
  }
  print(fact);
}
