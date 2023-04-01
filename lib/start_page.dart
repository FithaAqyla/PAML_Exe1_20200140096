import 'package:exesatuu/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Pokedex.",
                                style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 175, 5)),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        height: 30.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Welcome to Pokedex",
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
                                "You can find your favorite pokemon here",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        'assets/image/pokeball.png',
                        width: 180,
                        height: 150,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ))),
                
        floatingActionButton: FloatingActionButton(
          
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
            )));
  }
}
