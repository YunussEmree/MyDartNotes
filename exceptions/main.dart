void main() {
  int a = 10;
  int b = 20;
  double result;
  int tamsonuc;

  try {
    result = a / b;
    tamsonuc = a ~/ b; //sonucun tam kısmının alınmasını istedik

    print(result);
    print(tamsonuc);

    setAge(12);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } on FormatException catch (e) {
    //sadece formatexception türündeki hatalarda çalışıyor
    //else if mantığı eğer hata zeroexp ise üstteki değilse formatexp i kontrol ediyor.
    print("deneme");
  } catch (e) {
    print(e);
  } finally {
    print("Her türlü çalışıyorum");
  }

  try {
    calculate(100);
  } on RuleException catch (e) {
    print(e.errormessage());
  }
}

void setAge(int age) {
  if (age < 13) throw new Exception("Yaşınız 13 ten büyük olmalı");
  if (age < 8)
    throw new FormatException(
        "Yaşınız 8 den büyük olmalı"); //formatexception türünde hata atıyor
  throw new RuleException();
}

class RuleException implements Exception {
  String errormessage() => 'Kural hatası oluştu';
}

void calculate(double amount) {
  if (amount < 1000) throw new RuleException();
}
