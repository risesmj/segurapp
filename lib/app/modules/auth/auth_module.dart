import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/auth/pages/login_page.dart';

class AuthModule extends Module {
  @override
  get binds => [];

  @override
  get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const LoginPage(),
        ),
      ];
}
