import "dart:io";

void main() {
  int rem = 0;
  int count = 0;
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    rem = n % 10;
    if (rem % 2 != 0) {
      count++;
    }
    n = n ~/ 10;
  }
  print(count);
}
