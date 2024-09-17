import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  int number = 20;
  for (int i = 1; i <= rows; i++) {
    for (int sp = 1; sp < i; sp++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= rows - i + 1; j++) {
      stdout.write("$number ");
      number = number - 2;
    }

    print("");
  }
}
