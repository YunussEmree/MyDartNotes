void main() {
  String i1 = "Yunus";
  String i2 = "Emre";
  String i3 = "Şenyiğit";

  List<String> isim = ["Yunus", "Emre"];

  isim.add("Şenyiğit");
  print(isim);
  print(isim.last);
  print(isim.first);

  isim.insert(1, "Selam");
  print(isim);
  print(isim.firstWhere((s) => s.contains(
      "Em"))); //Emre'nin içinde Em olduğu için Emre'yi yazdıracak. Büyük küçük harf duyarlı ve eğer bulamazsa hata verir.
}
