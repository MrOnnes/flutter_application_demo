import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/button_widget.dart';
import 'widgets/input_widget.dart';
import '../unique_file/style_dictionary_color.dart';
import '../unique_file/style_dictionary_typo.dart';

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
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,),
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
        backgroundColor: adrColor.backgroundPrimary, // << CHANGE HERE
        title: Text(widget.title,
            style: TextStyle(
                color: adrColor.textNormal,
                fontFamily: adrTypo.subtitle1FontFamily,
                fontWeight: adrTypo.subtitle1FontWeight,
                fontSize: adrTypo.subtitle1FontSize)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdButtonPrimary(
              text: 'Primary Button',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Primary Button')));
              },
            ),
            AdButtonPrimaryIcon(
                text: 'Button Icon',
                danger: false,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Primary Button')));
                },
                faIcon: FontAwesomeIcons.circleCheck),
            AdButtonSecondary(
              text: 'testingSecondarytext lebih panjang lagi',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Primary Button')));
              },
            ),
            AdButtonSecondaryIcon(
                text: 'Secondary Icon',
                danger: false,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Primary Button')));
                },
                icons: FontAwesomeIcons.circleCheck),
            AdButtonText(
              text: 'Text',
              // danger: true,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Text Button')));
              },
            ),
            AdButtonTextIcon(
                text: "IconText",
                danger: false,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Text Button')));
                },
                icons: FontAwesomeIcons.circleCheck),
            AdButtonIcon(
              icons: Icons.people,
              danger: true,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Text Button')));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CheckBox(), LabelText(text: 'Remember Me')],
            ),
          ],
        ),
      ),
    );
  }
}
