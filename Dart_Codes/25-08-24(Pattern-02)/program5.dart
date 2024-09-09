import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  int number = 1;
  for (int i = 1; i <= rows; i++) {
    int temp = number;
    for (int j = 1; j <= rows; j++) {
      stdout.write("$temp ");
      temp = temp + 2;
    }
    print("");
    number = number + 2;
  }
}
