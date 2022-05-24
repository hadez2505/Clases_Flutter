import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List View tipo 1')),
      ),
      body: ListView(
        children: [
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
        ],
      ),
    );
  }
}