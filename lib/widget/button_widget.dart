import 'package:flutter/material.dart';

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
            color: Colors.yellow, //warna button
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
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
            color: Colors.white,
            border: Border.all(
                color: Colors.blue.shade200, width: 2), //border color
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
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
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
