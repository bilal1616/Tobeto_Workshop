int Factorial(int number) {
  if (number == 0) {
    return 1; // 0 faktöriyel 1'dir.
  }

  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

void main() {
  int input = 5; // Faktöriyeli hesaplanacak sayı, istediğiniz değeri kullanabilirsiniz.
  int factorialResult = Factorial(input);
  print('$input faktöriyeli: $factorialResult');
}
