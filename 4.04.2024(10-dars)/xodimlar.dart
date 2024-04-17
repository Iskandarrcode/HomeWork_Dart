
void main(List<String> args) {
  // employee objects
  var employee = Employees("John Doe", null, 50000)
    ..position = "Developer"; 

  // printer employee informations
  print("Ism: ${employee.name}");
  print("Lavozim: ${employee.getter()}");
  print("Maosh: ${employee.salary}");
}

// class Employees
class Employees {

  String name;
  String? position;
  int salary;

  Employees(this.name, this.position, this.salary);

  // Position = null employees returning function
  String getter() => position ?? "Lavozim belgilanmagan";
}
