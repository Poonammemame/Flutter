void main() {
  int i = 40;
  int squ;
  int cube;
  while (i <= 50) {
    if (i % 2 != 0) {
      squ = i * i;
      print(squ);
    } else if (i % 2 == 0) {
      cube = i * i * i;
      print(cube);
    }
    i++;
  }
}
