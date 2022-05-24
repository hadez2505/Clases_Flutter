import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear','Super Smash', 'Final Fantasy'];//lista de elementos

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List View tipo 2')),
      ),
      body: ListView.separated(
        itemCount:        options.length,
        itemBuilder:      (context,index)=> ListTile(
                                              leading: const Icon(Icons.access_alarm_outlined), //pone un elemento adelante
                                              title:   Text(options[index]),
                                              trailing: const Icon(Icons.arrow_forward_ios_outlined),//pone un elemento atras
                                              onTap: (){//para que tenga interactividad
                                                final game = options[index];
                                                print(game);
                                              },
                                            ), 
        separatorBuilder: (context,index)=>const Divider(),//una division entre los emenentos del listView 
      )

    );
  }
}
