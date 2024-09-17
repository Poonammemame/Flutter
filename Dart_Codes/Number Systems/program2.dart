import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int count = 0;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      count++;
    }
  }
  if (count > 0) {
    print("$num is not prime no");
  } else {
    print("$num is prime no");
  }
}
