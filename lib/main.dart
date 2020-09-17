
import 'package:shoppings_app/RouteGenerator.dart';
import 'package:shoppings_app/screens/HomePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.red.shade900),

    // home: HomePage(),
    initialRoute: '/home',
    onGenerateRoute: RouteGenerator.generateRoute,


  ));
}


















