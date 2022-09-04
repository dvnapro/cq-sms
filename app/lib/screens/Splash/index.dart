import 'package:app/screens/Home/index.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSplashScreen(
        splash: Column(
          children: <Widget>[
            const Spacer(
              flex: 4,
            ),
            Expanded(
              child: SvgPicture.asset('assets/cq-logo.svg',
                  height: 250, width: 250),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'CQ SMS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 255, 90, 1),
                    fontSize: 20),
              ),
            ),
            const Spacer(flex: 4),
            const Text('WWW.CQ-SMS.COM')
          ],
        ),
        nextScreen: const MyHomePage(title: "CQ SMS"),
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 800,
        duration: 4000,
      ),
    );
  }
}
