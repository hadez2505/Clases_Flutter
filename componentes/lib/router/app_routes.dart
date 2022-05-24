import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

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
