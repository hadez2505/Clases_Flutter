import 'package:flutter/material.dart' show IconData, Widget; //solo expone lo que necesito sin importar todo el paquete

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions({
    required this.route, 
    required this.name, 
    required this.screen,
    required this.icon, 
    });
}
