import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    int table;
    int number = 1;
    for (int j = 1; j <= i; j++) {
      if (j == 1) {
        table = number * 3;
        stdout.write("$table ");
      } else {
        number++;
        table = number * 3;
        stdout.write("$table ");
      }
    }
    print("");
  }
}
