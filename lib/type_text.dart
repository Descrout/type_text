library type_text;

import 'dart:async';

import 'package:flutter/material.dart';

class TypeText extends StatefulWidget {
  const TypeText(
    this.text, {
    Key? key,
    required this.duration,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  final String text;

  /// Total typing duration.
  ///
  /// Depending on the length of the `text`, the `duration` argument will be divided
  /// to calculate each character's unit time. Be aware that it cannot be lower than flutter's
  /// refresh rate. (16 milliseconds for each character)
  final Duration duration;

  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  @override
  TypeTextState createState() => TypeTextState();
}

class TypeTextState extends State<TypeText> {
  String typedText = "";
  Timer? timer;
  int currentIdx = 0;

  @override
  void initState() {
    timer = Timer.periodic(
        Duration(
            microseconds: widget.duration.inMicroseconds ~/ widget.text.length +
                1), (timer) {
      if (typedText.length == widget.text.length ||
          currentIdx >= widget.text.length) {
        timer.cancel();
        return;
      }
      setState(() {
        typedText += widget.text[currentIdx];
        currentIdx++;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      typedText,
      style: widget.style,
      strutStyle: widget.strutStyle,
      textAlign: widget.textAlign,
      textDirection: widget.textDirection,
      locale: widget.locale,
      softWrap: widget.softWrap,
      overflow: widget.overflow,
      textScaleFactor: widget.textScaleFactor,
      maxLines: widget.maxLines,
      semanticsLabel: widget.semanticsLabel,
      textWidthBasis: widget.textWidthBasis,
      textHeightBehavior: widget.textHeightBehavior,
    );
  }
}
