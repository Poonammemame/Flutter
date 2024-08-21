import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n >= 0) {
    if (n == 7) {
      print("7 days remaining");
    } else if (n == 6) {
      print("6 days remaining");
    } else if (n == 5) {
      print("5 days remaining");
    } else if (n == 4) {
      print("4 days remaining");
    } else if (n == 3) {
      print("3 days remaining");
    } else if (n == 2) {
      print("2 days remaining");
    } else if (n == 1) {
      print("1 days remaining");
    } else if (n == 0) {
      print("0 days Assignment is Overdue");
    }
    n--;
  }
}
