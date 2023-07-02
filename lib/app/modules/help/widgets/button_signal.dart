import 'package:flutter/material.dart';

import '../../../core/theme.dart';

class ButtonSignal extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const ButtonSignal({
    super.key,
    this.child,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: ColorsTheme.whiteOpacity,
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
          color: Colors.white.withOpacity(0.3),
        ),
        child: child,
      ),
    );
  }
}
