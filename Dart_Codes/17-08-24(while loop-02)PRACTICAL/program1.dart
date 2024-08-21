import "dart:io";

void main() {
  int mul = 1;
  int sum = 0;
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!);
  while (n <= m) {
    if (n % 2 == 0) {
      sum = sum + n;
    } else if (n % 2 != 0) {
      mul = mul * n;
    }
    n++;
  }
  print(sum);
  print(mul);
}
