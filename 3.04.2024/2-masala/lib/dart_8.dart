class Employee {
  String name;
  String position;
  int _salary;

  Employee(this.name, this.position, this._salary) {
    if (_salary < 0) {
      throw "Errorga tushdi";
    }
  }
// getter
 int get salary{
    return _salary;
  }

// setter
  set salar(int newSalary){
    _salary = newSalary;
  }

// get information
  void getInfo() {
    print("Ismi: $name, Lavozimi: $position, Oyligi: $_salary");
  }
}
