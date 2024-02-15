import 'dart:math';

import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // late AnimationController splashScreenAnimationController;
  ScrollController scrollController = ScrollController();
  late AnimationController _controller;
  // late Animation<double> _rotation;
  late Animation<Offset> _translation;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 50),
        curve: Curves.linear,
      );
    });

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // Scroll has reached the end, reset the position to the beginning.
        scrollController.jumpTo(scrollController.position.minScrollExtent);
      }
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    );
    // _rotation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
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
    scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  double generateRandomDouble() {
    final random = Random();
    return random.nextDouble();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   scrollController.animateTo(
    //     scrollController.position.maxScrollExtent,
    //     duration: const Duration(seconds: 10),
    //     curve: Curves.linear,
    //   );
    // });

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
                child: ListView(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/black_tilapia.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/carrot.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/chicken_meat.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/cucumber.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/pepper.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/potato.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/red_onion.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/sausages.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/tomato.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/black_tilapia.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/carrot.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/chicken_meat.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/cucumber.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/pepper.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/potato.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/red_onion.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/sausages.png",
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/images/background_image_elements/tomato.png",
                    ),
                  ],
                ),
              ),
              const Gap(20),
            ],
          ),
        ],
      ),
    );
  }
}
