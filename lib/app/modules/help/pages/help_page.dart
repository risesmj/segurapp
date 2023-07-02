import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:segurapp/app/modules/help/widgets/button_signal.dart';
import 'package:segurapp/app/modules/help/widgets/my_scaffold.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> with TickerProviderStateMixin {
  late final AnimationController animationController;
  bool signalSended = false;
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      value: 0.0,
      vsync: this,
    );

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController
            .animateTo(animationController.value == 1.0 ? 0.0 : 1.0);
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      actions: [
        IconButton(
          onPressed: () {
            Modular.to.pushNamed('profile');
          },
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        )
      ],
      child: signalSended
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                    animation: animationController,
                    builder: (context, child) {
                      return Opacity(
                          opacity: animationController.value,
                          child: ButtonSignal(
                            onLongPress: () {
                              signalSended = false;
                              animationController.stop();
                              setState(() {});

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Solicitação de ajuda cancelada.'),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.notifications_active,
                              size: 200,
                              color: Colors.white,
                            ),
                          ));
                    }),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Sinal recebido, a ajuda está \na caminho',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            )
          : ButtonSignal(
              onTap: () {
                setState(() {
                  signalSended = true;
                  animationController.reset();
                  animationController.animateTo(1.0);
                });
              },
              child: const Text(
                "HELP",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
    );
  }
}
