import 'package:flutter/material.dart';

import 'package:componentes/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: ListView2Screen(),
      initialRoute: '/home',
      routes: {
        '/alert'    : (context) => const AlertScreen(),
        '/card'     : (context) => const CardScreen(),
        '/home'     : (context) => const HomeScreen(),
        '/listView1': (context) => const ListView1Screen(),
        '/listView2': (context) => const ListView2Screen(),
      },
    );
  }
}