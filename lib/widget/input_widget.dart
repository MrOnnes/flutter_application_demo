import 'package:flutter/material.dart';
import '../unique_file/style_dictionary_color.dart';
import '../unique_file/style_dictionary_typo.dart';

class LabelText extends StatelessWidget {
  const LabelText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: adrColor.typeButton,
            fontFamily: adrTypo.labelFontFamily,
            fontWeight: adrTypo.labelFontWeight,
            fontSize: adrTypo.labelFontSize),
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
      side: BorderSide(
        //color: Colors.grey, //warna border
        color: adrColor.outlineGray,
        width: 2,
      ),
      //checkColor: Colors.green,//warna checklist
      checkColor: Colors.grey,
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
