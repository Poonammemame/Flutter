import "dart:io";

void main() {
  int rem;
  int squ;
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    rem = n % 10;
    if (rem % 2 == 0) {
      squ = rem * rem;
      print(squ);
    }
    n = n ~/ 10;
  }
}
