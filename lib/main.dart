import 'package:flutter/material.dart';
import 'widget/button_widget.dart';
import 'widget/input_widget.dart';
import '../unique_file/style_dictionary_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: StyleDictionary.primary),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Token Demo test'),
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
          children: [
            ButtonPrimary(
              text: "Primary",
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('data')));
              },
            ),
            ButtonSecondary(
              text: "Secondary",
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('data')));
              },
            ),
            ButtonText(
              text: 'Text',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('data')));
              },
            ),
            CheckBox()
          ],
        ),
      ),
    );
  }
}
