import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/central/pages/central_page.dart';

class CentralModule extends Module {
  @override
  get binds => [];

  @override
  get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const CentralPage(),
        ),
      ];
}
