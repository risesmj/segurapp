import 'package:flutter_modular/flutter_modular.dart';

import 'pages/help_page.dart';
import 'pages/profile_page.dart';
import 'pages/splash_page.dart';

class HelpModule extends Module {
  @override
  get binds => [];

  @override
  get routes => [
        ChildRoute(
          '/',
          transition: TransitionType.fadeIn,
          child: (context, args) => const SplashPage(),
        ),
        ChildRoute(
          '/help',
          transition: TransitionType.scale,
          child: (context, args) => const HelpPage(),
        ),
        ChildRoute(
          '/profile',
          child: (context, args) => const ProfilePage(),
        ),
      ];
}
