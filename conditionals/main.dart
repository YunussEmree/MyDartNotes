void main() {
  var sayi = 10; //sonradan tipi değişemez

  if (sayi > 20) {
    print("Sayı 20 den büyük");
  } else if (sayi == 20)
    print("Sayı 20 ye eşittir");
  else
    print("Sayı 20 den küçüktür.");

  var not = "B";
  switch (not) {
    case "A":
      {
        print("Süper");
        break;
      }
    case "B":
      {
        print("İyi");
        break;
      }
    case "C":
      {
        print("İdare Eder");
        break;
      }
    case "D":
      {
        print("Kötü");
        break;
      }
    default:
      {
        print("Yanlış Değer Girildi.");
        break;
      }
  }
}
