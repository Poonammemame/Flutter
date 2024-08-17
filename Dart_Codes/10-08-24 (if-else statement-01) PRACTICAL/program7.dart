void main() {
  var month = 6;
  if (month < 12) {
    switch (month) {
      case 1:
        print("Jan has 31 days");
      case 2:
        print("Feb has 28 or 29 days");
      case 3:
        print("Mar has 31 days");
      case 4:
        print("Apr has 30 days");
      case 5:
        print("May has 31 days");
      case 6:
        print("Jun has 30 days");
      case 7:
        print("July has 31 days");
      case 8:
        print("Aug has 31 days");
      case 9:
        print("Sep has 30 days");
      case 10:
        print("Oct has 31 days");
      case 11:
        print("Nov has 30 days");
      case 12:
        print("Dec has 31 days");
    }
  } else {
    print("Invalid Month");
  }
}
