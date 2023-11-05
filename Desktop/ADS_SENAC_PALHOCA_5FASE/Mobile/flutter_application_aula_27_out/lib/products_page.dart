import 'package:flutter/material.dart';
import 'package:flutter_application_aula_27_out/home_page.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Products'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Image.asset('assets/logo_olx2.jpg'),
              SizedBox(height: 50),
              buildProductRows([
                [
                  Product(
                      'assets/moda_feminina_1.jpg', 'Moda Feminina', 100.00),
                  Product('assets/oculos_batton.jpg', 'Óculos', 50.00),
                  Product('assets/smartphone_1.jpg', 'Celular', 300.00),
                ],
                [
                  Product('assets/apple_pc.jpg', 'Desktop', 200.00),
                  Product('assets/bicicleta.png', 'Bicicleta', 400.00),
                  Product('assets/skateboard.jpg', 'Skate', 150.00),
                ],
              ]),
              SizedBox(height: 20), // Aumenta o espaço vertical entre as linhas
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductRows(List<List<Product>> rows) {
    List<Widget> rowWidgets = [];
    for (List<Product> row in rows) {
      rowWidgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 100), // Espaçamento horizontal de 100 pixels
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((product) {
              return Column(
                children: <Widget>[
                  buildProduct(product.imagePath, product.title),
                  SizedBox(height: 10),
                  Text(
                      'R\$ ${product.price.toStringAsFixed(2)}'), // Exibe o preço com cifrão "R$"
                ],
              );
            }).toList(),
          ),
        ),
      );
    }
    return Column(
      children: rowWidgets,
    );
  }

  Widget buildProduct(String imagePath, String title) {
    return Column(
      children: <Widget>[
        Container(
          width: 90,
          height: 60,
          child: Image.asset(imagePath),
        ),
        SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}

class Product {
  final String imagePath;
  final String title;
  final double price;

  Product(this.imagePath, this.title, this.price);
}
