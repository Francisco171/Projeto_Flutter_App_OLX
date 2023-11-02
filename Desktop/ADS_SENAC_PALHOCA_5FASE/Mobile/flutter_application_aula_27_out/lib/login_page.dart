import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70, // Cor de fundo verde
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/logo_olx.jpg'), // Corrigindo a importação da imagem
              TextField(
                onChanged: (text) {
                  setState(() {
                    email = text;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ), // Adicionar negrito
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  setState(() {
                    password = text;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ), // Adicionar negrito
                ),
              ),
              ButtonTheme(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      if (email == 'francisco.com.br' && password == '123') {
                        Navigator.pushNamed(
                            context, '/home'); // Navega para a HomePage
                      } else {
                        print('Login inválido');
                      }
                    },
                    child: Text('Entrar'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
