import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Redy Putra Sembada'),
        ),
        body: ListView(
          children: [
            ShoeCard(name: 'Sepatu Nike', price: 28700),
            ShoeCard(name: 'Sepatu Adidas', price: 29900),
            ShoeCard(name: 'Sepatu Eiger', price: 219600),
            ShoeCard(name: 'Sepatu Diodora', price: 86200),
            ShoeCard(name: 'Sepatu Ando', price: 28200),
          ],
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String name;
  final int price;

  ShoeCard({required this.name, required this.price});

  Color _randomTransparentColor() {
    final Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _randomTransparentColor(),
      child: ListTile(
        title: Text(name),
        subtitle: Text('\$$price'),
        trailing: Image.asset('assets/images/shoes.png'),
      ),
    );
  }
}
