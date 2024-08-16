import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'My app', // used by the OS task switcher
//       home: SafeArea(child: MyHelloWorldApp()),
//     ),
//   );
// }

// class MyHelloWorldApp extends StatelessWidget {
//   const MyHelloWorldApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           Container(
//             height: 50,
//             padding: const EdgeInsets.all(0),
//             decoration: const BoxDecoration(color: Colors.blue),
//             child: const Row(
//               children: [
//                 IconButton(
//                   onPressed: null,
//                   icon: Icon(Icons.menu),
//                   tooltip: "Boton de navegacion",
//                 ),
//                 Expanded(child: Text("Gains checker")),
//                 IconButton(
//                   onPressed: null,
//                   icon: Icon(Icons.search),
//                   tooltip: "Boton de busqueda",
//                 ),
//               ],
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child: Text(
//                 "hola mundo",
//                 textDirection: TextDirection.ltr,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScaffoldApp",
      home: MyHomePage(title: "ScaffoldApp"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _corazon = Icon(
    Icons.favorite_border,
    color: Colors.white,
  );
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: () {
                _likedChange();
              },
              icon: _corazon),
        ],
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _corazon = Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        _corazon = Icon(Icons.favorite, color: Colors.red);
        _liked = true;
      }
    });
  }
}
