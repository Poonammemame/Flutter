void main() {
  int i = 10;
  int prod = 1;
  while (i >= 1) {
    if (i % 2 != 0) {
      prod = prod * i;
    }

    i--;
  }
  print(prod);
}
