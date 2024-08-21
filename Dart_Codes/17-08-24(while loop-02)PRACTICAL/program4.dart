import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!);
  while (n <= m) {
    if (n % 7 == 0) {
      print(n);
    }
    n++;
  }
}
