import 'package:edified/screens/login_screen/login.dart';
import 'package:edified/screens/register_screen/register.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.purple,
                Colors.deepPurple,
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage('images/newlogo.jpeg'),
                  ),
                ),
                //SizedBox(height: 1),
                Text(
                  'EDIFIED',
                  style: TextStyle(
                      letterSpacing: 13,
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 0.5,
                ),

                SizedBox(
                  width: 200,
                  child: Divider(
                    color: Colors.white60,
                    thickness: 2,
                  ),
                ),

                Text(
                  'Education Modified',
                  style: TextStyle(color: Colors.white60,
                  fontSize: 15),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      minWidth: 300.0,
                      height: 42.0,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      minWidth: 300.0,
                      height: 42.0,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                        fontSize: 22,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
