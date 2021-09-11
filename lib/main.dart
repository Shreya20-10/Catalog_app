import 'package:flutter/material.dart';
import 'package:training_project/pages/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color:Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      ),

      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        "MyRoutes.loginRoute": (context)=>LoginPage(),
        "MyRoutes.homeRoute": (context)=>HomePage(),
        "MyRoutes.cartRoute": (context)=>CartPage(),
      },
    );
  }
}

