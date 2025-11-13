import 'package:flutter/material.dart';
import 'package:laboratorul2/resources/app_icons.dart';

class WelcomeWidget extends StatelessWidget {
  final String name;
  const WelcomeWidget({super.key, this.name = 'Sidra'});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 44), // 44px sub marginea de sus
        child: SizedBox(
          width: 345,
          height: 25,
          child: Stack(
            children: [
              // Textul la (0,0)
              const Positioned(
                left: 0,
                top: 0,
                child: _WelcomeText(),
              ),

              // Clopoțelul la (325,5), 20x20
              const Positioned(
                left: 325,
                top: 5,
                child: SizedBox(width: 20, height: 20, child: _NotificationIcon()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 25,
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Welcome ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Plus Jakarta Sans',
                height: 1,
                letterSpacing: 1,
              ),
            ),
            TextSpan(
              text: 'Sidra',
              style: TextStyle(
                color: Color(0xFF00434C),
                fontSize: 20,
                fontFamily: 'Plus Jakarta Sans',
                height: 1,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NotificationIcon extends StatelessWidget {
  const _NotificationIcon();

  @override
  Widget build(BuildContext context) {
    return AppIcons.notification();
  }
}

