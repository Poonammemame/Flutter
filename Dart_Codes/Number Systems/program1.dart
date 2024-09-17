import "dart:io";
void main() {
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  if (num == sum) {
    print("$num is perfect no");
  } else {
    print("$num is not perfect no");
  }
}
