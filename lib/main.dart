import 'package:edified/screens/e_books.dart';
import 'package:edified/screens/home_screen.dart';
import 'package:edified/screens/login_screen/login.dart';
import 'package:edified/screens/online_courses.dart';
import 'package:edified/screens/register_screen/register.dart';
import 'package:edified/screens/register_screen/study_material.dart';
import 'package:edified/screens/welcome_screen.dart';
import 'package:edified/search_for_gpt.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/empty_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        EmptyScreen.id: (context) => EmptyScreen(),
        OnlineCourses.id: (context) => OnlineCourses(),
        Ebooks.id: (context) => Ebooks(),
        StudyMaterial.id: (context) => StudyMaterial(),
        SearchForGpt.id: (context) => SearchForGpt(),
      },
    );
  }
}
