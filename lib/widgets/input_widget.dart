import 'package:flutter/material.dart';
import '../tokens/dart/dart_color.dart';
import '../tokens/dart/dart_font.dart';

class LabelText extends StatelessWidget {
  const LabelText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(
            color: adrColor.textNormal,
            fontFamily: adrFont.labelFontFamily,
            fontWeight: adrFont.weightRegular,
            fontSize: adrFont.labelFontSize),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key});

  @override
  State<CheckBox> createState() => _CheckBox();
}

class _CheckBox extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white; //fill color pas focused
      }
      return Colors.white; //fill color pas checked
    }

    return Checkbox(
      side: const BorderSide(
        color: adrColor.borderBase,
        width: 2,
      ),
      checkColor: Colors.green, // << CHANGE HERE
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
