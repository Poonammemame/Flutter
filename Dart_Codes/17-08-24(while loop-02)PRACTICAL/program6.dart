import "dart:io";

void main() {
  int count = 0;
  int rem;
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    rem = n % 10;
    count++;
    n = n ~/ 10;
  }
  print(count);
}
