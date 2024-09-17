import "dart:io";
void main() {
  int n = int.parse(stdin.readLineSync()!);
  int num1 = 0;
  int num2 = 1;
  int num3;
  for (int i = 1; i <= n; i++) {
    print("$num1 ");
    num3 = num1 + num2;
    num1 = num2;
    num2 = num3;
  }
}
