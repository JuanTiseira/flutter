import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(child: MyHelloWorldApp()),
    ),
  );
}

class MyHelloWorldApp extends StatelessWidget {
  const MyHelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(0),
            decoration: const BoxDecoration(color: Colors.blue),
            child: const Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.menu),
                  tooltip: "Boton de navegacion",
                ),
                Expanded(child: Text("Gains checker")),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                  tooltip: "Boton de busqueda",
                ),
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "hola mundo",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
