import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spare/Model.dart/ClientEntity.dart';
import 'package:spare/Model.dart/Employees.dart';

class ClientDetials extends StatefulWidget {
  const ClientDetials({super.key});

  @override
  State<ClientDetials> createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetials> {
  final TextEditingController clientName = TextEditingController();
  final TextEditingController designation = TextEditingController();
  final TextEditingController contactNo = TextEditingController();
  final TextEditingController officeAddress = TextEditingController();
  final TextEditingController orderInfo = TextEditingController();
  final TextEditingController material_id = TextEditingController();
  final TextEditingController product_id = TextEditingController();
  final TextEditingController workingHour = TextEditingController();
  final TextEditingController quantity = TextEditingController();
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
                      controller: clientName,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Client",
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
                      controller: designation,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Designation",
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
                      controller: contactNo,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        labelText: "Contact Number",
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
                      controller: officeAddress,
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
                      controller: orderInfo,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Order Details",
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
                      controller: material_id,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Material ID",
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
                      controller: product_id,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Product ID",
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
                      controller: quantity,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Total Quantity",
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

                        ClientEntity w = ClientEntity(
                            clientName: clientName.text,
                            designation: designation.text,
                            contactNo: contactNo.text,
                            officeAddress: officeAddress.text,
                            orderInfo: orderInfo.text,
                            materialId: material_id.hashCode,
                            product_id: product_id.hashCode);
                        ClientService service = ClientService();
                        await service.postDepartment(clientEntity: w);
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
