import 'package:flutter/material.dart';
import 'package:segurapp/app/core/theme.dart';

class MyScaffold extends StatelessWidget {
  final Widget? child;
  final Alignment alignment;
  final List<Widget>? actions;
  final bool hideAppBar;

  const MyScaffold({
    super.key,
    this.child,
    this.alignment = Alignment.center,
    this.actions,
    this.hideAppBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hideAppBar
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: ColorsTheme.backgroundLinearStart,
              actions: actions,
            ),
      body: Container(
        alignment: alignment,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorsTheme.backgroundLinearStart,
                ColorsTheme.backgroundLinearEnd,
              ]),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }
}
