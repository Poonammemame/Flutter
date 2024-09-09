import "dart:io";

void main() {
  int number = 10;
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      if (j == 1) {
        stdout.write("$number ");
      } else {
        number--;
        stdout.write("$number ");
      }
    }
    print("");
  }
}
