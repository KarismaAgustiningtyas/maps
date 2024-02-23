import 'package:flutter/material.dart';
import 'package:maps/view/login.dart';
import 'package:maps/view/register.dart';
import 'package:maps/view/navbar.dart';
import 'package:maps/view/home.dart';
import 'package:maps/view/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences.setMockInitialValues({});
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: Login(),
    );
  }
}
