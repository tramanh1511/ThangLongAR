// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ar_app/widgets/nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  static const routeName = '/';

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              image: const DecorationImage(
                image: AssetImage('assets/image/intro.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(flex: 2),
              // const Image(
              //   image: AssetImage('assets/image/logo.png'),
              //   height: 20,
              // ),
              // const Spacer(flex: 2),
              // Image.network(
              //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwmqjbIzh2-u96P_Jh0RYo7Y-kP2CGFpGuxnvMl-vaeA&s',
              //   height: 128,
              // ),
              const SizedBox(height: 50),
              FadeTransition(
                opacity: _animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.1),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: Text(
                    AppLocalizations.of(context)!.welcomeTitle,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF4C3D3D),
                      // color: Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FadeTransition(
                opacity: _animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.1),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.welcomeContent,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF4C3D3D),
                        fontWeight: FontWeight.bold,
                      ),
                      // color: Color(0xfff4f4f4)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 3),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavBar(),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF7D4),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.welcomeButton,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC07F00) //(0xFF8B322C),
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ],
      ),
    );
  }
}
