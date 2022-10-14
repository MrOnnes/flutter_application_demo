import 'package:flutter/material.dart';
import '../unique_file/style_dictionary_color.dart';

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
      checkColor: adrColor.successBase,
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
