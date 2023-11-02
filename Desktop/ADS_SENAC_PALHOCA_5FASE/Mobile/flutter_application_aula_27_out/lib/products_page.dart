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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/logo_olx2.jpg'),
            ),
            SizedBox(height: 20),
            buildProductRow([
              Product('assets/moda_feminina.jpg', 'Moda Feminina', 100.00),
              Product('assets/oculos.jpg', 'Óculos', 50.00),
            ]),
            SizedBox(height: 20),
            buildProductRow([
              Product('assets/celular.jpg', 'Celular', 300.00),
              Product('assets/jopatinete1.jpg', 'Patinete', 200.00),
            ]),
            SizedBox(height: 20),
            buildProductRow([
              Product('assets/bicicleta.png', 'Bicicleta', 400.00),
              Product('assets/prancha_surf.jpg', 'Prancha Surf', 150.00),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildProductRow(List<Product> products) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: products.map((product) {
        return Column(
          children: <Widget>[
            buildProduct(product.imagePath, product.title),
            SizedBox(height: 10),
            Text(
                'R\$ ${product.price.toStringAsFixed(2)}'), // Exibe o preço com cifrão "R$"
          ],
        );
      }).toList(),
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
