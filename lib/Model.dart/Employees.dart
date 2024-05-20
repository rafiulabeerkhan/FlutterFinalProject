import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Employees employeesFromJson(String str) => Employees.fromJson(json.decode(str));

String employeesToJson(Employees data) => json.encode(data.toJson());

class Employees {
  int? employeeID;
  String? firstName;
  String? lastName;
  int? age;
  String? address;
  int? nid;
  String? birthDate;
  String? shift;
  int? workingHour;
  String? joiningDate;

  Employees(
      {this.employeeID,
      this.firstName,
      this.lastName,
      this.age,
      this.address,
      this.nid,
      this.birthDate,
      this.shift,
      this.workingHour,
      this.joiningDate});

  Employees.fromJson(Map<String, dynamic> json) {
    employeeID = json['employeeID'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    address = json['address'];
    nid = json['nid'];
    birthDate = json['birthDate'];
    shift = json['shift'];
    workingHour = json['workingHour'];
    joiningDate = json['joiningDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeID'] = this.employeeID;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['age'] = this.age;
    data['address'] = this.address;
    data['nid'] = this.nid;
    data['birthDate'] = this.birthDate;
    data['shift'] = this.shift;
    data['workingHour'] = this.workingHour;
    data['joiningDate'] = this.joiningDate;
    return data;
  }

  @override
  String toString() {
    return ''' employee $firstName ''';
  }
}

class EmployeeService {
  List<Employees> _department = [];

  static final EmployeeService _shared = EmployeeService._sahredInstance();

  EmployeeService._sahredInstance() {
    _deparmentStreamController = StreamController<List<Employees>>.broadcast(
      onListen: () {
        _deparmentStreamController.sink.add(_department);
      },
    );
  }

  factory EmployeeService() => _shared;

  late final StreamController<List<Employees>> _deparmentStreamController;

  Stream<List<Employees>> get allDeparment => _deparmentStreamController.stream;

  final String _url = "https://flutterapiwthspring.onrender.com/employee";
  final String _url2 =
      "https://flutterapiwthspring.onrender.com/employee/getAll";

  Future<void> cacheDepartment() async {
    final allDep = await geAlltDeparments();
    _department = allDep;
    _deparmentStreamController.add(_department);
  }

  Future<void> postDepartment({required Employees employees}) async {
    var response = await http.post(Uri.parse(_url),
        headers: {"Content-Type": "application/json"},
        body: employeesToJson(employees));
    if (response.statusCode < 301) {
      _department.add(employees);
      _deparmentStreamController.add(_department);
    }
  }

  Future<List<Employees>> geAlltDeparments() async {
    var response = await http
        .get(Uri.parse(_url2), headers: {"Content-Type": "application/json"});
    Iterable l = json.decode(response.body);
    print(l);
    List<Employees> departemts =
        List<Employees>.from(l.map((dep) => Employees.fromJson(dep)));

    return departemts;
  }
}
