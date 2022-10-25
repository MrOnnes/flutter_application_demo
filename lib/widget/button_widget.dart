import 'package:flutter/material.dart';
import 'package:flutter_application_demo/unique_file/style_dictionary_typo.dart';
import '../unique_file/style_dictionary_color.dart';
import '../unique_file/style_dictionary_shape.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus
      child: Container(
        margin: EdgeInsets.all(4),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(
            color: adrColor.backgroundPrimary,
            //color: Colors.yellow, //warna button
            // borderRadius: BorderRadius.circular(100)
            borderRadius: BorderRadius.circular(adrShape.buttonPrimaryRadius)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              //color: Colors.black, //warna text
              color: adrColor.typeButton,
              fontFamily: adrTypo.button1FontFamily,
              fontWeight: adrTypo.button1FontWeight,
              fontSize: adrTypo.button1FontSize),
        ),
      ),
    );
  }
}

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus
      child: Container(
        margin: EdgeInsets.all(4),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(
            color: adrColor.backgroundLink,
            border: Border.all(
                color: adrColor.outlineLink, width: 2), //border color
            borderRadius: BorderRadius.circular(adrShape.buttonPrimaryRadius)),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: adrColor.typeLink,
              fontFamily: adrTypo.button1FontFamily,
              fontWeight: adrTypo.button1FontWeight,
              fontSize: adrTypo.button1FontSize),
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus

      child: Container(
        margin: EdgeInsets.all(8),
        constraints: BoxConstraints(minWidth: 97),
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: adrColor.typeLink,
              fontFamily: adrTypo.button1FontFamily,
              fontWeight: adrTypo.button1FontWeight,
              fontSize: adrTypo.button1FontSize),
        ),
      ),
    );
  }
}
