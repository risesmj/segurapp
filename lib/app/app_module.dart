import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/auth/auth_module.dart';
import 'package:segurapp/app/modules/central/central_module.dart';
import 'package:segurapp/app/modules/help/help_module.dart';

class AppModule extends Module {
  @override
  get binds => [];

  @override
  get routes => [
        ModuleRoute(
          '/auth',
          module: AuthModule(),
        ),
        ModuleRoute(
          '/web/central',
          module: CentralModule(),
        ),
        ModuleRoute(
          '/app',
          module: HelpModule(),
        ),
      ];
}
