abstract class Payable {
  double getPaymentAmount();
}

class Invoice implements Payable {
  String partNumber;
  String partDescription;
  int quantity;
  double pricePertItem;

  @override
  double getPaymentAmount() {
    print("Payment invoice");
    return 0;
  }

  Invoice(
      this.partNumber, this.partDescription, this.quantity, this.pricePertItem);
}

class Employee implements Payable {
  String firstName;
  String lastName;
  String socialSecurityNumber;

  Employee(this.firstName, this.lastName, this.socialSecurityNumber);

  @override
  double getPaymentAmount() {
    print("Payment employe");
    return 0;
  }
}
class HourlyEmployee implements Employee{
  double wage;
  double hours;

  @override
  String firstName;

  @override
  String lastName;

  @override
  String socialSecurityNumber;

  @override
  double getPaymentAmount() {
    // TODO: implement getPaymentAmount
    throw UnimplementedError();
  }

  HourlyEmployee(this.wage, this.hours, this.firstName, this.lastName,
      this.socialSecurityNumber);
}
class SalariedEmployee implements Employee{
  @override
  String firstName;

  @override
  String lastName;

  @override
  String socialSecurityNumber;

  @override
  double getPaymentAmount() {
    // TODO: implement getPaymentAmount
    throw UnimplementedError();
  }

  double weeklySalary;

  SalariedEmployee(this.firstName, this.lastName, this.socialSecurityNumber,
      this.weeklySalary);
}









class ComissionEmployee implements Employee {
  double grossSales;
  double commisionRate;

  @override
  String firstName;

  @override
  String lastName;

  @override
  String socialSecurityNumber;

  @override
  double getPaymentAmount() {
    // TODO: implement getPaymentAmount
    throw UnimplementedError();
  }

  ComissionEmployee(this.grossSales, this.commisionRate, this.firstName,
      this.lastName, this.socialSecurityNumber);
}
