import 'package:flutter/material.dart';
import '../tokens/dart/dart_color.dart';
import '../tokens/dart/dart_font.dart';
import '../tokens/dart/dart_size.dart';

class AdButtonPrimary extends StatefulWidget {
  const AdButtonPrimary(
      {Key? key, required this.text, this.danger, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;
  final bool? danger;

  @override
  State<AdButtonPrimary> createState() => _AdButtonPrimaryState();
}

class _AdButtonPrimaryState extends State<AdButtonPrimary> {
  bool isHovered = false;
  bool? _danger;

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });

  void initState() {
    super.initState();

    _danger = widget.danger;
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor = isHovered
        ? adrColor.backgroundButtonPrimaryHover
        : adrColor.backgroundButtonPrimaryActive;
    final buttonColorError = isHovered
        ? adrColor.backgroundButtonErrorHover
        : adrColor.backgroundButtonErrorActive;

    return Container(
      child: MouseRegion(
          onEnter: (event) => onEntered(true),
          onExit: (event) => onEntered(false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            child: InkWell(
              onTap: widget.onPressed,
              borderRadius: BorderRadius.circular(100),
              child: Container(
                margin: const EdgeInsets.all(4),
                constraints: const BoxConstraints(minWidth: 97),
                decoration: BoxDecoration(
                    color: (_danger == !false)
                        ? buttonColorError
                        : buttonColor, // << CHANGE HERE
                    borderRadius: BorderRadius.circular(adrSize.buttonRadius)),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: (_danger == !false)
                          ? adrColor.textWhite
                          : adrColor.textButtonPrimary,
                      fontFamily: adrFont.button1FontFamily,
                      fontWeight: adrFont.weightSemibold,
                      fontSize: adrFont.button1FontSize),
                ),
              ),
            ),
          )),
    );
  }
}

class AdButtonSecondary extends StatefulWidget {
  const AdButtonSecondary(
      {Key? key, required this.text, this.danger, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;
  final bool? danger;

  @override
  State<AdButtonSecondary> createState() => _AdButtonSecondaryState();
}

class _AdButtonSecondaryState extends State<AdButtonSecondary> {
  bool isHovered = false;
  bool? _danger;

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });

  void initState() {
    super.initState();

    _danger = widget.danger;
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor = isHovered
        ? adrColor.backgroundButtonSecondaryHover
        : adrColor.backgroundButtonSecondaryActive;
    final buttonColorError = isHovered
        ? adrColor.backgroundButtonErrorHover
        : adrColor.backgroundButtonSecondaryActive;

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: InkWell(
          onTap: widget.onPressed,
          borderRadius: BorderRadius.circular(100), //border radius focus
          child: Container(
            margin: const EdgeInsets.all(4),
            constraints: const BoxConstraints(minWidth: 97),
            decoration: BoxDecoration(
                color: (_danger == !false) ? buttonColorError : buttonColor,
                border: Border.all(
                    color: (_danger == !false)
                        ? adrColor.borderButtonError
                        : adrColor.borderLink,
                    width: 2), //border color
                borderRadius: BorderRadius.circular(adrSize.buttonRadius)),
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: (_danger == !false)
                      ? adrColor.textError
                      : adrColor.textLink,
                  fontFamily: adrFont.button1FontFamily,
                  fontWeight: adrFont.weightSemibold,
                  fontSize: adrFont.button1FontSize),
            ),
          ),
        ),
      ),
    );
  }
}

class AdButtonText extends StatelessWidget {
  const AdButtonText(
      {Key? key, required this.text, this.danger, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;
  final bool? danger;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100), //border radius focus
      hoverColor: (danger == !false)
          ? adrColor.backgroundButtonErrorHover
          : adrColor.backgroundButtonSecondaryHover,

      child: Container(
        margin: const EdgeInsets.all(8),
        constraints: const BoxConstraints(minWidth: 97),
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color:
                  (danger == !false) ? adrColor.textError : adrColor.textLink,
              fontFamily: adrFont.button1FontFamily,
              fontWeight: adrFont.weightSemibold,
              fontSize: adrFont.button1FontSize),
        ),
      ),
    );
  }
}

// class ButtonPrimary extends StatelessWidget {
//   const ButtonPrimary({Key? key, required this.text, required this.onPressed})
//       : super(key: key);

//   final String text;
//   final Function() onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       borderRadius: BorderRadius.circular(100),
//       child: Container(
//         margin: const EdgeInsets.all(4),
//         constraints: const BoxConstraints(minWidth: 97),
//         decoration: BoxDecoration(
//             color: adrColor.backgroundButtonPrimaryActive, // << CHANGE HERE
//             borderRadius: BorderRadius.circular(adrSize.buttonRadius)),
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//               color: adrColor.textButtonPrimary,
//               fontFamily: adrFont.button1FontFamily,
//               fontWeight: adrFont.weightSemibold,
//               fontSize: adrFont.button1FontSize),
//         ),
//       ),
//     );
//   }
// }

// class ButtonSecondary extends StatelessWidget {
//   const ButtonSecondary({Key? key, required this.text, required this.onPressed})
//       : super(key: key);

//   final String text;
//   final Function() onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       borderRadius: BorderRadius.circular(100), //border radius focus
//       child: Container(
//         margin: const EdgeInsets.all(4),
//         constraints: const BoxConstraints(minWidth: 97),
//         decoration: BoxDecoration(
//             color: adrColor.backgroundButtonSecondaryActive,
//             border:
//                 Border.all(color: adrColor.borderLink, width: 2), //border color
//             borderRadius: BorderRadius.circular(adrSize.buttonRadius)),
//         padding: const EdgeInsets.all(8),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//               color: adrColor.textLink,
//               fontFamily: adrFont.button1FontFamily,
//               fontWeight: adrFont.weightSemibold,
//               fontSize: adrFont.button1FontSize),
//         ),
//       ),
//     );
//   }
// }


