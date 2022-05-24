import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear','Super Smash', 'Final Fantasy'];//lista de elementos

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List View tipo 1')),
      ),
      body: ListView(
        children: [

          ...options.map(//operator spread para sacar cada uno de los elementos de la list
            (e) => ListTile(
                    leading: const Icon(Icons.access_alarm_outlined), //pone un elemento adelante
                    title:   Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),//pone un elemento atras
                  ),
            ).toList()//toList para convertir la lista
          
        ],
      ),
    );
  }
}
