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
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(
                              text: 'Hello, ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: '$name',
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ),

                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 120)),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/image/profile.jpg"),
                              radius: 30,
                            )
                          ],
                        ),
                      )
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(50.0),
                      //   child: Image.asset(
                      //     'assets/image/profile.jpg',
                      //     // alignment: Alignment.topRight,
                      //     width: 60.0,
                      //     height: 100.0,
                      //   ),
                      // ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                  Column(
                    children: <Widget>[
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
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: 180,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 50, 127, 52)),
                                  child: Image.asset('assets/image/poke1.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '#001',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            'Bulbasaur',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Color.fromARGB(
                                                  255, 50, 127, 52),
                                            ),
                                            child: Align(
                                              child: Text(
                                                'Grass',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Container(
                                            width: 50,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Color.fromARGB(
                                                  255, 104, 22, 132),
                                            ),
                                            child: Align(
                                              child: Text(
                                                'Poison',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "Bulbasaur can be seen napping in bright \nsunlight. There is a seed on its back By\nsoaking up the suns rays. the seed\ngrows progressively larger",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          // Text(
                                          //   "sunlight. There is a seed on its back By",
                                          //   style: TextStyle(
                                          //       fontSize: 12,
                                          //       color: Colors.grey),
                                          // )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            )),
                        SizedBox(
                            height: 180,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 50, 127, 52)),
                                  child: Image.asset('assets/image/poke2.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 20),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '#002',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            'Ivysaur',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Color.fromARGB(
                                                  255, 50, 127, 52),
                                            ),
                                            child: Align(
                                              child: Text(
                                                'Grass',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Container(
                                            width: 50,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Color.fromARGB(
                                                  255, 104, 22, 132),
                                            ),
                                            child: const Align(
                                              child: Text(
                                                'Poison',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            "There is  a bud on the Pokemons back.\n To support its weight, Ivisaurs legs and \n trunk grow thick and strong. If it starts\nspending more time lying in the sunlight,\nits a sign that the bid will bloom into a\nlarge eflower soon.",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          // Text(
                                          //   "sunlight. There is a seed on its back By",
                                          //   style: TextStyle(
                                          //       fontSize: 12,
                                          //       color: Colors.grey),
                                          // )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
