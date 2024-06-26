import 'package:flutter/material.dart';

class InputDemo1 extends StatelessWidget {
  const InputDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 32;
    TextStyle style = const TextStyle(fontSize: 14, height: 1);
    double width = 1;
    Color focusedColor = Colors.blue;
    Color unFocusedColor = const Color(0xffd9d9d9);
    OutlineInputBorder focusedBorder = OutlineInputBorder(borderSide: BorderSide(color: focusedColor, width: width));
    OutlineInputBorder border = OutlineInputBorder(borderSide: BorderSide(color: unFocusedColor, width: width));

    return SizedBox(
        width: 250,
        child: TextField(
          cursorHeight: style.fontSize,
          cursorWidth: 1,
          style: style,
          decoration: InputDecoration(
            hintText: 'please input',
            hintStyle: style.copyWith(color: unFocusedColor),
            constraints: BoxConstraints.tight(Size(0, height)),
            contentPadding: EdgeInsets.only(top: 0,right: 12,left: 12),
            focusedBorder: focusedBorder,
            enabledBorder: border,
            hoverColor: focusedColor,
            border: border,
          ),
        ));
  }
}
