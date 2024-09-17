import "dart:io";

void main() {
  int number = 1;

  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    int table;
    for (int j = 1; j <= i; j++) {
      table = number * 3;
      stdout.write("$table ");
      number++;
    }
    print("");
  }
}
