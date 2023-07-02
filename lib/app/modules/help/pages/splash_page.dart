import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/help/widgets/logo.dart';
import 'package:segurapp/app/modules/help/widgets/my_scaffold.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
    ).then(
      (value) => Modular.to.navigate('/auth/'),
    );

    return const MyScaffold(
      child: Logo(),
    );
  }
}
