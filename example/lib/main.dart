import 'package:flutter/material.dart';
import 'package:type_text/type_text.dart';

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
          child: TypeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 🙂 Donec sollicitudin velit id finibus aliquet. Curabitur efficitur tortor id magna consequat varius. In ut ultrices lacus, a auctor nibh. Sed porta odio semper metus semper, vitae posuere nisl ornare. Ut rutrum imperdiet ornare. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",
            duration: const Duration(seconds: 10),
            onType: (progress) {
              print("%${(progress * 100).toStringAsFixed(1)} completed.");
            },
          ),
        ),
      ),
    );
  }
}
