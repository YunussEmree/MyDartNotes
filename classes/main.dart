void main() {
  CustomerManager customerManager = new CustomerManager();
  Customer customer = new Customer.namedCons("Yunus Emre", "Şenyiğit", 19, 1);
  // customer.age = 19;
  // customer.id = 1;
  // customer.name = "Yunus Emre";
  // customer.lastname = "Şenyiğit";

  customerManager.Save(customer);
  customerManager.Delete(customer);
  customerManager.Update(customer);
  customerManager.Info(customer);
}

class CustomerManager {
  void Save(Customer customer) {
    print("Müşteri kaydedildi: " + customer.name);
  }

  void Delete(Customer customer) {
    print("Müşteri silindi: " + customer.name);
  }

  void Update(Customer customer) {
    print("Müşteri güncellendi: " + customer.name);
  }

  void Info(Customer customer) {
    print("Müşteri bilgileri: " +
        customer.id.toString() +
        customer.name +
        customer.lastname +
        customer.age.toString());
  }
}

class Customer {
  String name = "";
  String lastname = "";
  int age = 0;
  int id = 0;

  Customer.namedCons(String name, String lastname, int age, int id) {
    print("Sınıf Oluşturuldu");
    this.name = name;
    this.lastname = lastname;
    this.age = age;
    this.id = id;
  }
  Customer() {}

  String get customerName {
    return this.name;
  }

  void set customerName(String name) {
    if (name.length < 2)
      print("Müşteri ismi minimum 2 karakterden oluşmalıdır.");
    else
      this.name = name;
  }
}
