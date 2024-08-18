void main() {
  int cube;
  int squ;
  for (int i = 20; i <= 70; i++) {
    if (i % 2 == 0) {
      cube = i * i * i;
      print(cube);
    } else if (i % 2 != 0) {
      squ = i * i;
      print(squ);
    }
  }
}
