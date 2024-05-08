import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redy Putra Sembada", style: TextStyle(fontSize: 20.0),),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("sepatu"),
              
            ],
          )
        ],
      ),
    );
  }
}