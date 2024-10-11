void main() {
  selamver();
  test(1, 2, 3);
  test(1,
      2); //3. parametreyi vermedik ve hata vermiyor çünkü satır 15 de kapalı parantez kullandık.
  test2(1,
      b: "Selam",
      c: "Test"); //süslü parantez içine koyduğumuz parametreleri methodu çağırırken hangisinin ne olduğunu söyleyerek çağırmamız gerekiyor.
  test2(1,
      c: "Se",
      b: "Ag"); //bu şekilde de parametrelerin yerlerini değiştirebiliyoruz.
}

void selamver() {
  print("Selam");
}

void yaziyaz(String msg) {
  print(msg);
}

void test(a, [b, c]) {
  //kapalı parantez içine alınca zorunlu olmuyor parametreler
  print(a);
  print(b);
  print(c);
}

void test2(a, {b, c}) {
  print(a);
  print(b);
  print(c);
}
