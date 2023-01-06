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
      //resizeToAvoidBottomInset: false,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdButtonPrimary(
                text: 'Primary Button v2',
                //danger: true,
                onPressed: () {},
              ),
              AdButtonPrimaryIcon(
                  text: 'Button Icon v2',
                  danger: false,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Primary Button')));
                  },
                  icon: FontAwesomeIcons.circleCheck),
              AdButtonSecondary(
                text: 'Secondary v2',
                //danger: true,
                onPressed: () {},
              ),
              AdButtonSecondaryIcon(
                  text: 'Secondary Icon v2',
                  //danger: true,
                  onPressed: () {},
                  icon: FontAwesomeIcons.circleCheck),
              AdButtonText(
                text: 'Text v2',
                //danger: true,
                onPressed: () {},
              ),
              AdButtonTextIcon(
                  text: "IconText v2",
                  //danger: true,
                  onPressed: () {},
                  icon: FontAwesomeIcons.circleCheck),
              AdButtonIcon(
                icon: Icons.people,
                //danger: true,
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CheckBox(), LabelText(text: 'Remember Me')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
