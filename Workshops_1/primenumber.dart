bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  if (n <= 3) {
    return true;
  }
  if (n % 2 == 0 || n % 3 == 0) {
    return false;
  }

  for (int i = 5; i * i <= n; i += 6) {
    if (n % i == 0 || n % (i + 2) == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int N = 100; // Örnek olarak N'i 100 olarak ayarlayabilirsiniz.

  print("1'den $N'e kadar olan asal sayılar:");

  for (int i = 2; i <= N; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}