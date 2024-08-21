void main() {
  int cube;
  int squ;
  int i = 20;
  while (i <= 70) {
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
