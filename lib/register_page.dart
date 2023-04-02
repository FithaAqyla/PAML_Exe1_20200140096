import 'package:exesatuu/home_page.dart';
import 'package:exesatuu/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formf = GlobalKey<FormState>();
  final namee = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();
  final repwd = TextEditingController();
  bool _togglePass = true;
  bool _togglePass2 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Form(
                  key: _formf,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/image/regis.png',
                          width: 200.0,
                          height: 100.0,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 175, 55)),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 40.0,
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
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: email,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email cannot be Empty';
                              }
                              bool eValid = RegExp('@').hasMatch(value);
                              if (!eValid) {
                                return "Enter a valid email";
                              }
                              return null;
                            },
                            // onSaved: (value) {
                            //   email = value;
                            // },
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
                          TextFormField(
                            controller: repwd,
                            obscureText: _togglePass2,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outlined),
                              labelText: 'Re-Password',
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                              suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    _togglePass2 = !_togglePass2;
                                  });
                                },
                                child: Icon(_togglePass2
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password cannot be empty';
                              } else if (value.length < 6) {
                                "Password must be at least 6 characters";
                              } else if (value != pwd.text) {
                                return "Password does not match";
                              }
                            },
                            // onSaved: (value) {
                            //   name = value;
                            // },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () {
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
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 175, 55),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 175, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
