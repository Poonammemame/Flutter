import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    int number = i;
    for (int j = 1; j <= i; j++) {
      if (j % 2 == 0) {
        stdout.write("${number * number} ");
      } else {
        stdout.write("${number * number * number} ");
      }
      number++;
    }
    print("");
  }
}
