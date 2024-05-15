import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tictactoe/utils/AppImage.dart';
import 'package:tictactoe/screen/registerscreen.dart';

class GameSplashScreen extends StatefulWidget {
  const GameSplashScreen({super.key});

  @override
  State<GameSplashScreen> createState() => _GameSplashScreenState();
}

class _GameSplashScreenState extends State<GameSplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => RegisterScreen()),
      );
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.wall),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(140),
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage(AppImage.tictactoe3D),
                      fit: BoxFit.cover)),
            ),
            const Gap(12),
            const Text(
              'TIC TAC TOE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const Gap(90),
          ],
        ),
      ),
    );
  }
}
