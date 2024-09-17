import "dart:io";
void main() {
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    int n = 0;
    int num = rows;
    for (int j = 1; j <= i; j++) {
      stdout.write("${i + n}");
      n = n + num;
      num--;
    }

    print("");
  }
}
