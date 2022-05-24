import 'package:componentes/models/menu_options.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions> [
    // TODO: borrar home page
    MenuOptions(route: '/home',      name: 'Home Screen',      screen: const HomeScreen(),      icon: Icons.home),
    MenuOptions(route: '/listView1', name: 'List View Tipo 1', screen: const ListView1Screen(), icon: Icons.list_outlined),
    MenuOptions(route: '/listView2', name: 'List View Tipo 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOptions(route: '/alert',     name: 'Alert Screen',     screen: const AlertScreen(),     icon: Icons.warning_amber_outlined),
    MenuOptions(route: '/card',      name: 'Card Screeb',      screen: const CardScreen(),      icon: Icons.credit_card_outlined),
  ];

  static Map<String, Widget Function(BuildContext context)> routes = {
    '/alert'    : (context) => const AlertScreen(),
    '/card'     : (context) => const CardScreen(),
    '/home'     : (context) => const HomeScreen(),
    '/listView1': (context) => const ListView1Screen(),
    '/listView2': (context) => const ListView2Screen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
