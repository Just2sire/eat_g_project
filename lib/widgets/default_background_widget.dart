import 'package:eat_g/providers/theme_provider.dart';
import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DefaultBackgroundWidget extends StatelessWidget {
  final Widget child;
  const DefaultBackgroundWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/fruit_bg.png",
          ),
        ),
      ),
      child: ColoredBox(
        color: context.watch<ThemeProvider>().isLight ? context.secondary.withOpacity(0.6) : Colors.black45.withOpacity(0.5),
        child: child,
      ),
    );
  }
}
