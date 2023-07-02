import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/help/widgets/my_scaffold.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle_rounded,
              size: 120,
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Olá, Matheus',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Modular.to.navigate('/auth/');
              },
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Encerrar sessão'),
            ),
          ],
        ),
      ),
    );
  }
}
