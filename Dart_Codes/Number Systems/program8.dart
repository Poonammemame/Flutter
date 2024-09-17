import "dart:io";

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int flag = 0;
  while (num > 0) {
    int rem = num % 10;
    if (rem == 0) {
      flag = 1;
    }
    num ~/= 10;
  }
  if (flag == 1) {
    print("duck no");
  } else {
    print("not duck no");
  }
}
