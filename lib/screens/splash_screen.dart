import 'dart:math';

import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _translation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    );
    _translation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(100, 50),
    ).animate(_controller);

    _controller.forward();
    _controller.repeat();

    Future.delayed(
      const Duration(seconds: 6),
      () => context.pushReplacement("/home"),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double generateRandomDouble() {
    final random = Random();
    return random.nextDouble();
  }

  List<String> items = [
    "black_tilapia.png",
    "carrot.png",
    "chicken_meat.png",
    "cucumber.png",
    "pepper.png",
    "potato.png",
    "red_onion.png",
    "sausages.png",
    "tomato.png",
    "black_tilapia.png",
    "carrot.png",
    "chicken_meat.png",
    "cucumber.png",
    "pepper.png",
    "potato.png",
    "red_onion.png",
    "sausages.png",
    "tomato.png",
  ];

  @override
  Widget build(BuildContext context) {
    List<double> generateRandomValues() {
      final random = Random();
      final randomWidth = random.nextInt(context.width.toInt());
      final randomHeigth = random.nextInt(context.height.toInt());
      return [randomWidth.toDouble(), randomHeigth.toDouble()];
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(),
          SizedBox(
            width: double.infinity,
            // height: context.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedRotation(
                  duration: const Duration(milliseconds: 5996),
                  turns: generateRandomDouble(),
                  child: AnimatedBuilder(
                    animation: Tween<Offset>(
                      begin: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                      end: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                    ).animate(_controller),
                    builder: (context, child) {
                      return Transform.translate(
                        offset: _translation.value,
                        child: child,
                      );
                    },
                    child: Container(
                      color: context.primary,
                      width: 2,
                      height: 50,
                    ),
                  ),
                ),
                AnimatedRotation(
                  duration: const Duration(milliseconds: 5996),
                  turns: generateRandomDouble(),
                  child: AnimatedBuilder(
                    animation: Tween<Offset>(
                      begin: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                      end: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                    ).animate(_controller),
                    builder: (context, child) {
                      return Transform.translate(
                        offset: _translation.value,
                        child: child,
                      );
                    },
                    child: Container(
                      color: context.primary,
                      width: 2,
                      height: 50,
                    ),
                  ),
                ),
                AnimatedRotation(
                  duration: const Duration(milliseconds: 5996),
                  turns: generateRandomDouble(),
                  child: AnimatedBuilder(
                    animation: Tween<Offset>(
                      begin: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                      end: Offset(
                        generateRandomValues()[0],
                        generateRandomValues()[1],
                      ),
                    ).animate(_controller),
                    builder: (context, child) {
                      return Transform.translate(
                        offset: _translation.value,
                        child: child,
                      );
                    },
                    child: Container(
                      color: context.primary,
                      width: 2,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              // width: 300,
              height: 250,
            ),
          ),
          Column(
            children: [
              SizedBox(
            height: context.height * 0.06,
                child: ScrollLoopAutoScroll(
                  scrollDirection: Axis.horizontal, //required
                  delay: const Duration(milliseconds: 200),
                  duration: const Duration(seconds: 50),
                  gap: 0,
                  reverseScroll: false,
                  duplicateChild: 25,
                  enableScrollInput: true,
                  delayAfterScrollInput: const Duration(seconds: 1),
                  child: Row(
                    children: List.generate(items.length, (index) {
                      String image = items[index];
                      return Image.asset(
                        "assets/images/background_image_elements/$image",
                      );
                    }),
                  ),
                ),
              ),
              const Gap(10),
            ],
          ),
        ],
      ),
    );
  }
}
