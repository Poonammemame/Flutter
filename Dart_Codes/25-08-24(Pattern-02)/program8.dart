import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  int number = 1;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      if (j == rows) {
        stdout.write(number + 1);
      } else {
        stdout.write("$number");
      }
    }
    print("");
    number++;
  }
}
