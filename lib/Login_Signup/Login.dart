import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(154, 70, 37, 6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 35.0,
              ),
              const Image(
                image: AssetImage("images/smLogo.png"),
                // image: NetworkImage(
                //     "https://us.123rf.com/450wm/boxfile123/boxfile1232010/boxfile123201000075/156598224-sm-logo-design-vector-icon-symbol-luxury.jpg"),
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
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        // hintText: "Email",
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 228, 170, 94)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 146, 244, 54))))),
                      child: Container(
                        height: 50.0,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: "bolt-semibold",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (!emailTextEditingController.text.contains("@")) {
                          displayToastMessage(
                            "Invalid email. ",
                          );
                        } else if (passwordTextEditingController.text.length <
                            6) {
                          displayToastMessage(
                            "Invalid password. ",
                          );
                        } else {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              "/inner/", (route) => false);
                        }
                      },
                    )
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/signup/", (route) => false);
                    print("Registered Button Clicked");
                  },
                  child: Text("Do not have an Account? Register Here"))
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
