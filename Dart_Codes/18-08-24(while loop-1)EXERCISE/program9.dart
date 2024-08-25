void main() {
  int numDays = 7;
  while (numDays >= 0) {
    if (numDays == 0) {
      print(" 0 days Assignment is Overdue");
    } else {
      print("$numDays days are remaining");
    }
    numDays--;
  }
}
