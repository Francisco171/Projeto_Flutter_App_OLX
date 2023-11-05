import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_aula_27_out/home_page.dart';
import 'package:flutter_application_aula_27_out/login_page.dart';
import 'package:flutter_application_aula_27_out/products_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;

  // Certifique-se de que o email e a senha estão corretos na chamada de signInWithEmailAndPassword
  try {
    await auth.signInWithEmailAndPassword(
      email: 'alcionefranciscodeborba@gmail.com',
      password: '123456',
    );
    print('Usuário logado com sucesso');
  } catch (error) {
    print('Ocorreram os seguintes erros $error');
  }

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
