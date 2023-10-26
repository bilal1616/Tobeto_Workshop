import 'dart:math';

void main() {
  for (int number = 1; number <= 10000; number++) { //for döngüsü, 1 ile 10,000 arasındaki sayıları sırayla kontrol eder.
    if (isArmstrongNumber(number)) { //Her döngü adımında, isArmstrongNumber(number) fonksiyonunu kullanarak number değişkenini kontrol eder.
      print("$number bir Armstrong sayısıdır");
    }
  }
}

bool isArmstrongNumber(int number) {
  int originalNumber =
      number; //Bu satır, "number" adlı bir değişkenin orijinal değerini saklar
  int numberOfDigits = number
      .toString()
      .length; //"number" sayısını bir metin (string) olarak dönüştürür ve bu metinin uzunluğunu alır
  int sum = 0; //Bu satır, toplam değişkenini sıfırlar

  while (number > 0) {
    int digit = number %
        10; //en sağdaki rakamı alır. "number % 10" ifadesi, "number" değişkenini 10'a böldüğünde kalanı hesaplar
    sum += pow(digit, numberOfDigits)
        .toInt(); //Bu satır, "digit" değişkenindeki rakamın "numberOfDigits" üssünü hesaplar ve "sum" adlı bir toplam değişkenine ekler.
    number ~/= 10; //Bölümün tam sayıya dönüşümü
  }

  return sum ==
      originalNumber; //"return sum == originalNumber;" ifadesi, sum ve originalNumber adlı iki değişkenin eşit olup olmadığını kontrol eder ve sonucu bir şart ifadesi olarak döndürür
}
