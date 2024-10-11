void main() {
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("Çift Sayı: " + i.toString());
    } else
      print("Tek Sayı: " + i.toString());
  }

  List<String> isim = ["Yunus", "Emre", "Şenyiğit"];
  for (var element in isim) {
    //foreach yapısı
    print(element);
  }

  var sayi = 5;
  while (sayi < 10) {
    print(sayi);
    sayi++;
  }

  var sayi2 = 5;

  do {
    //do while ın normal while dan farkı şart sağlanmasa bile en az 1 kere çalışmasıdır.
    print(sayi2);
    sayi2++;
  } while (sayi2 < 10);
}
