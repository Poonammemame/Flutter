import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int rev = 0;
  while (temp > 0) {
    int p = temp % 10;
    rev = rev * 10 + p;
    temp = temp ~/ 10;
  }
  if (rev == num) {
    print("$num is palindrome no");
  } else {
    print("$num is not palindrome no");
  }
}
