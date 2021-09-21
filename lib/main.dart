import 'package:flutter/material.dart';

void main() {
  runApp(const SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MySnackBarDemoPage(title: 'Flutter SnackBar Demo Page'),
    );
  }
}

class MySnackBarDemoPage extends StatefulWidget {
  const MySnackBarDemoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySnackBarDemoPage> createState() => _MySnackBarDemoPageState();
}

class _MySnackBarDemoPageState extends State<MySnackBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar Demo"),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yeah!!! it\'s SnackBar'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
