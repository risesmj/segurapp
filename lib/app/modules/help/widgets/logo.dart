import 'package:flutter/material.dart';
import 'package:segurapp/app/core/theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'S',
          style: _textStyle(
            color: ColorsTheme.darkBlue,
          ),
        ),
        Text(
          'egur',
          style: _textStyle(),
        ),
        Text(
          'A',
          style: _textStyle(
            color: ColorsTheme.darkBlue,
          ),
        ),
        Text(
          'pp',
          style: _textStyle(),
        )
      ],
    );
  }

  TextStyle _textStyle({
    Color color = Colors.white,
  }) =>
      TextStyle(
        color: color,
        fontSize: 35,
      );
}
