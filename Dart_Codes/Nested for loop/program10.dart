import "dart:io";

void main() {
  int number = 1;
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    int value = rows - i + 1;
    for (int j = 1; j <= i; j++) {
      if (j % 2 == 0) {
        stdout.write("$number ");
        number++;
      } else {
        stdout.write("$value ");
        value++;
      }
    }
    print("");
  }
}
