import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/core/theme.dart';
import 'package:segurapp/app/modules/help/widgets/logo.dart';
import 'package:segurapp/app/modules/help/widgets/my_scaffold.dart';
import 'package:segurapp/app/modules/help/widgets/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Logo(),
              const SizedBox(
                height: 30,
              ),
              const MyTextField(
                label: 'Usuário',
                prefixIcon: Icons.account_circle,
              ),
              const SizedBox(
                height: 10,
              ),
              const MyTextField(
                label: 'Senha',
                prefixIcon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Switch.adaptive(
                    value: false,
                    activeColor: Colors.white,
                    onChanged: (b) {},
                  ),
                  const Text(
                    'Manter conectado?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.all(
                      ColorsTheme.darkBlue,
                    ),
                  ),
                  onPressed: () {
                    if (!kIsWeb) {
                      Modular.to.navigate('/web/central/');
                    } else {
                      Modular.to.navigate('/app/help');
                    }
                  },
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
