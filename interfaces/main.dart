void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.save(new EmailLogger());
}

class CustomerManager implements ICustomerManager {
  @override
  void save(ILogger iLogger) {
    print("Müşteri Kaydedildi");

    iLogger.Log(" ");
  }
}

class ICustomerManager {
  void save(ILogger iLogger) {
    print("Kaydedildi.");
  }
}

class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to email " + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to database " + message);
  }
}
