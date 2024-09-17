import "dart:io";

void main() {
  int rows = int.parse(stdin.readLineSync()!);
  int n = 1;
  for (int i = 1; i <= rows; i++) {
    for (int sp = 1; sp <= rows - i; sp++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("$n");
      n++;
    }
    print("");
  }
}
