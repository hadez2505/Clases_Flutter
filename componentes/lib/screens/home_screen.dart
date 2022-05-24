import 'package:flutter/material.dart';

import 'package:componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flotter'),
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => ListTile(
            leading : Icon(menuOptions[index].icon),
            title   : Text(menuOptions[index].name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap   : () {
              Navigator.pushNamed(context, menuOptions[index].route); //mas facil dandole nombre a mis rutas
            },
          ),
        ));
  }
}
