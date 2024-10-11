void main() {
  var sozluk = {"book": "kitap", "table": "masa", "chair": "sandalye"};

  print(sozluk);
  sozluk["book"] = "kitap1";
  print(sozluk);
  print(sozluk["table"]);
  print("-------------");
  for (var element in sozluk.values) {
    print(element);
  }
  print("Sözlüğün Eleman Sayısı: " + sozluk.length.toString());
  sozluk.remove("book");
  print(sozluk);
  print(sozluk.containsKey("table"));
  print(sozluk.containsValue("masa"));

  sozluk.forEach((key, value) {
    print(key.toString() + ": " + value.toString());
  });

  sozluk.clear();
  print(sozluk);
}
