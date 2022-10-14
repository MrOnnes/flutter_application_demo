import 'package:flutter/material.dart';
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
            color: adrColor.primaryBase,
            //color: Colors.yellow, //warna button
            // borderRadius: BorderRadius.circular(100)
            borderRadius: BorderRadius.circular(adrShape.extralarge)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              //color: Colors.black, //warna text
              color: adrColor.textBlack,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter'),
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
            color: adrColor.backgroundWhite,
            border:
                Border.all(color: adrColor.linkLight, width: 2), //border color
            borderRadius: BorderRadius.circular(adrShape.extralarge)),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:
              TextStyle(color: adrColor.linkBase, fontWeight: FontWeight.w500),
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
              color: adrColor.linkBase,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter'),
        ),
      ),
    );
  }
}
