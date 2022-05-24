import 'package:flutter/material.dart';

import 'package:componentes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flotter'),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => ListTile(
            title: const Text('Nombre de Ruta'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              // final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, '/card');//mas facil dandole nombre a mis rutas
            },
          ),
        ));
  }
}
