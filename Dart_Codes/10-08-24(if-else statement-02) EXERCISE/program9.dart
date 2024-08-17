void main() {
  num x = 25.5;
  if (x >= 0 && x <= 25) {
    print("Grade D");
  } else if (x >= 25 && x <= 50) {
    print("Grade C");
  } else if (x >= 50 && x <= 75) {
    print("Grade B");
  } else if (x >= 75 && x <= 100) {
    print("Grade A");
  } else {
    print("Invalid marks");
  }
}
