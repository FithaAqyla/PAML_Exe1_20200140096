import 'package:exesatuu/home_page.dart';
import 'package:exesatuu/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formf = GlobalKey<FormState>();
  final namee = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();
  bool _togglePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Form(
                  key: _formf,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/logo.png',
                        width: 370,
                        height: 200,
                      ),
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Let's get started.",
                                style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 175, 5)),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 30.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "There's No Sense In Going Out Of",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 30.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Your Way To Get Somebody To Like You",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.name,
                            controller: namee,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: 'Name',
                              hintText: 'Enter your name',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your name!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: pwd,
                            obscureText: _togglePass,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outlined),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                              suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    _togglePass = !_togglePass;
                                  });
                                },
                                child: Icon(_togglePass
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password cannot be empty';
                              } else if (pwd.text.length < 6) {
                                "Password must be at least 6 characters";
                              }
                              return null;
                            },
                            // onSaved: (value) {
                            //   name = value;
                            // },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            backgroundColor: Color.fromARGB(255, 255, 176, 58),
                          ),
                          onPressed: () {
                            if (_formf.currentState!.validate()) {
                              //

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage(
                                            name: namee.text,
                                          )));
                            }
                          },
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an account?",
                            style: TextStyle(fontSize: 15),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 175, 55)),
                              ))
                        ],
                      )
                      //
                      // const SizedBox(height: 10),
                      // SizedBox(
                      //   child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text("Don't have an account?"),
                      //         TextButton(
                      //             onPressed: () {},
                      //             child: const Text(
                      //               "Register",
                      //               style: TextStyle(
                      //                   color:
                      //                       Color.fromARGB(255, 255, 175, 55)),
                      //             ))
                      //       ]),
                      // ),
                    ],
                  ),
                ))));
  }

  // void _togglePassView() {
  //   setState(() {
  //     _togglePass = !_togglePass;
  //   });
  // }
}
