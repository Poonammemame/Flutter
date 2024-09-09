import "dart:io";

void main() {
  int num = 1;
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      if (num % 2 == 1) {
        stdout.write("0 ");
      } else {
        stdout.write("1 ");
      }
      num++;
    }
    print("");
  }
}
