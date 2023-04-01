import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                                text: 'Hello, $name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/image/profile.jpg',
                            // alignment: Alignment.topRight,
                            width: 60.0,
                            height: 100.0,
                          ),
                        ),
                      ],
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Pokedex",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 175, 55)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 206, 203, 203),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {},
                            ),
                            hintText: 'Search Pokemon',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Material(
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 237, 234, 234),
                                      borderRadius: BorderRadius.circular(12.0),
                                      // image: DecorationImage(
                                      //     image: AssetImage(
                                      //   "assets/image/poke1.png",
                                      // )),

                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: .0,
                                          blurRadius: 4.0,
                                          offset: new Offset(10.0, 10.0),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              'assets/image/poke1.png',
                                              width: 100,
                                              height: 50,
                                            ),
                                            padding: const EdgeInsets.all(12),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  padding: const EdgeInsets.all(12),
                                ),
                              ),
                            ),
                          )),
                          Positioned(
                              top: 45.0,
                              child: Container(
                                height: 150,
                                width: 100,
                                child: Column(
                                  children: [
                                    Text(
                                      "#001",
                                      style: TextStyle(),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Material(
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 237, 234, 234),
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/image/poke2.png")),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: .0,
                                          blurRadius: 4.0,
                                          offset: new Offset(10.0, 10.0),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Material(
                            child: Container(
                              height: 100,
                              width: 400,
                              child: Card(
                                elevation: 10.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 237, 234, 234),
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/image/poke3.png")),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: .0,
                                          blurRadius: 4.0,
                                          offset: new Offset(10.0, 10.0),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    //   height: 27,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(36),
                    //         bottomRight: Radius.circular(36),
                    //       )),
                    // ),

                    // Positioned(
                    //     child: Container(
                    //   margin: EdgeInsets.symmetric(),
                    //   height: 54,
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey,
                    //   ),
                    // )),
                    // Text('Ini Nama : $name'),
                    // Text('Ini Email : $email'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
