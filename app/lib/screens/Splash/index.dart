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
            Expanded(
              child: SvgPicture.asset('assets/cq-logo.svg',
                  height: 100, width: 100),
            ),
            const Text('CQ SMS'),
            const Text('WWW.CQ-SMS.COM')
          ],
        ),
        nextScreen: const MyHomePage(title: "CQ SMS"),
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 100,
        duration: 4000,
      ),
    );
  }
}
