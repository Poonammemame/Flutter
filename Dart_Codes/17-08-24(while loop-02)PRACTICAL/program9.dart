import "dart:io";

void main() {
  int rem;
  int rev = 0;
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    rem = n % 10;
    rev = rem + rev * 10;

    n = n ~/ 10;
  }
  print(rev);
}
