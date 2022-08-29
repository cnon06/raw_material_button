import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              shape: const StadiumBorder(),
              fillColor: Colors.amber,
              splashColor: Colors.amberAccent,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 20,
              ),
              onPressed: () {
            
              
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                RotatedBox(
                  quarterTurns: 3,
                  child: Icon(Icons.explore, color: Colors.orange,)),
                  SizedBox(width: 8),
               Text("Purchase", style: TextStyle(color: Colors.white),),
              ],
            ),
            )
            
            ],
        ),
      ),
    );
  }
}
