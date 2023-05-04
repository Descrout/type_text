import 'package:flutter/material.dart';
import 'package:type_text/type_text.dart';
import 'package:type_text/type_rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            TypeText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 🙂 Donec sollicitudin velit id finibus aliquet. ",
              duration: const Duration(seconds: 1),
              onType: (progress) {
                debugPrint(
                    "Normal text %${(progress * 100).toStringAsFixed(0)} completed.");
              },
            ),
            TypeRichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  TextSpan(
                    text: ' world!',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              duration: const Duration(seconds: 1),
              onType: (progress) {
                debugPrint(
                    "Rich text %${(progress * 100).toStringAsFixed(0)} completed.");
              },
            )
          ],
        )),
      ),
    );
  }
}
