import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  static String idScreen = "/signup/";
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

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
              const Image(
                image: AssetImage("images/smLogo.png"),
                width: 350.0,
                height: 200.0,
                alignment: Alignment.center,
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
                      controller: nameTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Name",
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
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email",
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
                      controller: phoneTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Phone",
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
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
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
                              const Color.fromARGB(255, 228, 170, 94)),
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
                            "Registration",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "bolt-semibold",
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // print("Registration Button Clicked");
                        if (nameTextEditingController.text.length < 4) {
                          displayToastMessage(
                            "Name must be atlast 3 characters. ",
                          );
                        } else if (!emailTextEditingController.text
                            .contains("@")) {
                          displayToastMessage(
                            "Please provide a valid email. ",
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    print("Registered Button Clicked");

                    Navigator.pushNamedAndRemoveUntil(
                        context, "/login/", (route) => false);
                  },
                  child: Text("Already have an Account? Login Here"))
            ],
          ),
        ),
      ),
    );
  }
}

displayToastMessage(String message) {
  Fluttertoast.showToast(msg: message);
}
