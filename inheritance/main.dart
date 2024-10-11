void main() {
  EmployeeManager employeeManager = new EmployeeManager();
  employeeManager
      .save(); //Inheritance ı override ediyoruz. yani Inherite olmuş metodu değiştirdik.

  CustomerManager customerManager = new CustomerManager();
  customerManager.save();
  CustomerManager.operasyon(); //static bir metodu çağırma
}

class PersonManager {
  void save() {
    print("saved");
  }
}

//Inheritance
class CustomerManager extends PersonManager {
  //inherit tek sefer ve tek class olabilir.
  void GetBestCustomer() {
    print("Best Customer Listed");
  }

  static void operasyon() {
    print("static method");
  }
}

class EmployeeManager extends PersonManager {
  void Pay() {
    print("payed");
  }

  @override
  void save() {
    print("saved and logged");
    super.save(); //override edilen methodu da bu şekilde çağırdık
  }
}
