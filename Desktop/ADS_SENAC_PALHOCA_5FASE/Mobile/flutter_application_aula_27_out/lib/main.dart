import 'package:flutter/material.dart';
import 'package:flutter_application_aula_27_out/login_page.dart';
import 'package:flutter_application_aula_27_out/home_page.dart';
import 'package:flutter_application_aula_27_out/products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', 
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/products': (context) => ProductsPage(),
      },
    );
  }
}
