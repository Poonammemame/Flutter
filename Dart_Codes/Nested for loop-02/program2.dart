import "dart:io";

void main() {
  int number = 3;
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$number ");
    }
    print("");
    number--;
  }
}
