import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  int number = 1;
  for (int i = 1; i <= rows; i++) {
    if (i % 2 == 1) {
      number = 1;
    } else {
      number = rows;
    }
    for (int j = 1; j <= rows; j++) {
      if (i % 2 == 1) {
        stdout.write("$number");
        number++;
      } else {
        stdout.write("$number");
        number--;
      }
    }
    print("");
  }
}
