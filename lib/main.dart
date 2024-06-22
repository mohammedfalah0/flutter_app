import 'package:flutter/material.dart';
import 'package:flutter_app/screens/screen1.dart';

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
      theme: ThemeData(



        
        
      ),
      home: const HomePage(

      ),
    );
  }
}


  