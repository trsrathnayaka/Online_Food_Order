import 'package:flutter/material.dart';
import 'package:online_food_order/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        
       primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home: const HomeScreen(),
    );
  }
}

