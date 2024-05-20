import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spare/Model.dart/Employees.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController nid = TextEditingController();
  final TextEditingController birthDate = TextEditingController();
  final TextEditingController shift = TextEditingController();
  final TextEditingController workingHour = TextEditingController();
  final TextEditingController joiningDate = TextEditingController();
  // final String login =
  //     'https://flutterapiwthspring.onrender.com/employee/getAll';

  // Future<void> employeeForm(Employees employees) async {
  //   var response = await http.post(Uri.parse(login),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode(employees.toJson()));
  //   print(response.body);
  //   print("hellojava");
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(154, 70, 37, 6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 1.0,
              ),
              const Text(
                "SM Enterprise",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: firstName,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: lastName,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Last Name",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: age,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        labelText: "Age",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: address,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Address",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: nid,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "NID",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: birthDate,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Birth Date",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: shift,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Shift",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: workingHour,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Working Hour",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    TextField(
                      controller: joiningDate,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Joining Date",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 228, 170, 94)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                            // side: BorderSide(color: Colors.red)
                          ))),
                      child: Container(
                        height: 50.0,
                        child: const Center(
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "bolt-semibold",
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        // print("Registration Button Clicked");

                        //String firstName =
                        // String email = emailTextEditingController.text;
                        // String password = passwordTextEditingController.text;
                        // String userfirstName =
                        //     firstnameTextEditingController.text;
                        // String userlastName =
                        //     lastnameTextEditingController.text;

                        Employees w = Employees(
                            firstName: firstName.text,
                            lastName: lastName.text,
                            age: age.hashCode,
                            address: address.text,
                            nid: nid.hashCode,
                            shift: shift.text,
                            workingHour: workingHour.hashCode,
                            joiningDate: joiningDate.text);
                        EmployeeService service = EmployeeService();
                        await service.postDepartment(employees: w);
                        Navigator.of(context).pop();
                        // await addData(user);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
