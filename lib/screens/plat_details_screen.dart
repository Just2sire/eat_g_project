import 'package:eat_g/providers/theme_provider.dart';
import 'package:eat_g/services/recipe_service.dart';
import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../widgets/default_background_widget.dart';
import '../widgets/detail_card_item.dart';

class PlatDetailsScreen extends StatefulWidget {
  final int id;
  const PlatDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<PlatDetailsScreen> createState() => _PlatDetailsScreenState();
}

class _PlatDetailsScreenState extends State<PlatDetailsScreen> {
  // late PageController pageController;

  @override
  void initState() {
    super.initState();
    // pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu4.svg",
            color: context.primary,
            height: 40,
          ),
          // icon: Image.asset(
          //   "assets/icons/menuBar.png",
          // ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().switchTheme();
            },
            icon: context.watch<ThemeProvider>().isLight
                ? Icon(
                    Icons.light_mode,
                    color: context.primary,
                    size: 24,
                  )
                : Icon(
                    Icons.dark_mode,
                    color: context.primary,
                    size: 24,
                  ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: RecipeAPIService.getRecipeDetails(widget.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as Map;
            return DefaultBackgroundWidget(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text(
                          data["title"],
                          style: context.titleLarge!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Gap(15),
                    SizedBox(
                      width: context.width * 1,
                      height: 180,
                      child: DetailCardItem(
                        content: data["image"],
                      ),
                    ),
                    const Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        "Diets",
                        textAlign: TextAlign.start,
                        style: context.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.primary,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Health Score:",
                            style: context.bodyLarge!.copyWith(
                              color: context.watch<ThemeProvider>().isLight
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            (data['healthScore'] as int).toString(),
                            style: context.bodyLarge!.copyWith(
                              color: context.tertiary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Preparation time:",
                            style: context.bodyLarge!.copyWith(
                              color: context.watch<ThemeProvider>().isLight
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${(data['readyInMinutes'] as int).toString()} min",
                            style: context.bodyLarge!.copyWith(
                              color: context.tertiary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     horizontal: 20,
                    //     vertical: 5,
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Align(
                    //         alignment: Alignment.centerLeft,
                    //         child: Text(
                    //           "Vitamin intake:",
                    //           style: context.bodyLarge!.copyWith(
                    //             color: context.watch<ThemeProvider>().isLight ? Colors.black : Colors.white,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //       const Gap(7),
                    //       Container(
                    //         width: double.infinity,
                    //         padding: const EdgeInsets.symmetric(
                    //           horizontal: 10,
                    //           vertical: 5,
                    //         ),
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(4),
                    //         ),
                    //         child: Text(
                    //           "Vit C, Omega 2, Graisse, Magnesium ...",
                    //           style: context.bodyMedium!.copyWith(
                    //             color: Colors.black,
                    //             fontSize: 16,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 7,
                      ).copyWith(
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Recette:",
                              style: context.bodyLarge!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(7),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              (data["instructions"] as String).isEmpty
                                  ? "Aucune instruction"
                                  : data["instructions"] as String,
                              style: context.bodyMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text(
                "An error occurred. Please check your connection",
                textAlign: TextAlign.center,
                style: context.bodyLarge!.copyWith(
                  color: context.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class PageViewIndicator extends StatelessWidget {
  final bool isActive;
  const PageViewIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 35,
      margin: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: isActive ? context.primary : Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
