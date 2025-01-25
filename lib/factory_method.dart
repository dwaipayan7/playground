enum EmployeeType {
  programmer,
  boss,
  hr
}

abstract class Employee{
  void work();

  factory Employee(EmployeeType type){
    switch(type){
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.boss:
        return Boss();
      case EmployeeType.hr:
        return HRManager();
    }
  }

}

class Programmer implements Employee{
  @override
  void work() {
    print("Building an App");
  }
}

class HRManager implements Employee{
  @override
  void work() {
    print("Doing Nothing");
  }
}

class Boss implements Employee{
  @override
  void work() {
    print("Leading the people");
  }
}

class FactoryMethod{
  static Employee getEmployee(String type){
    switch(type){
      case "programmer":
        return Programmer();
      case "hr":
        return HRManager();
      case "boss":
        return Boss();

      default:
        return Programmer();
    }
  }
}