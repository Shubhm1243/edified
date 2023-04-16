import 'package:flutter/material.dart';

import 'empty_screen.dart';

class Ebooks extends StatefulWidget {
  static String id = 'e-books';

  @override
  State<Ebooks> createState() => _EbooksState();
}

class _EbooksState extends State<Ebooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Welcome Readers!!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Oswald',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '  Data Structures and Algorithms',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/js.jpeg'),
                          ),
                          Text(
                            'C++ Programming',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmptyScreen.id);
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Operating System',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Oswald'),
                            ),
                          ],
                        ),
                        height: 250,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DBMS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EmptyScreen.id);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Formal Language Automata',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Oswald'),
                          ),
                        ],
                      ),
                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' X',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // First Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/js.jpeg'),
                              ),
                              Text(
                                'Mathematics',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Second Column
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Science',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Oswald'),
                            ),
                          ],
                        ),
                        height: 250,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Third Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Social Studies',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Fourth Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'English',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 45,
                ),

                Text(
                  ' XII',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // First Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/js.jpeg'),
                              ),
                              Text(
                                'Mathematics',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Second Column
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Biology',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Oswald'),
                            ),
                          ],
                        ),
                        height: 250,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Third Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Physics',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Fourth Column
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, EmptyScreen.id);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Chemistry',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
