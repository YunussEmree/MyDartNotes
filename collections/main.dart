void main() {
  List<String> list = ["asd", "bsd", "csd"];
  list[0] = "asd";

  for (var sehir in list) {
    print(sehir);
  }
  list.removeAt(0); //0. elemanı sil

  List<Customer> customers = [new Customer("Yunus")];
  customers.add(new Customer("Emre"));
}

class Customer {
  String name = " ";

  Customer(String name) {
    this.name = name;
  }
}
