
import 'package:crud_restapi/Screen/productCreateScreen.dart';
import 'package:crud_restapi/Screen/productGridViewScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CRUD Rest Api APP',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ProductGridViewScreen()
    );
  }
}

