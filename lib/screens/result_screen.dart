// import 'package:eat_g/data/meal_data.dart';
// import 'package:eat_g/models/meal_model.dart';
import 'package:eat_g/providers/theme_provider.dart';
import 'package:eat_g/services/recipe_service.dart';
import 'package:eat_g/utils/build_context_extension.dart';
import 'package:eat_g/widgets/default_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../widgets/item_card.dart';

class ResultScreen extends StatelessWidget {
  final List<String> queries;
  const ResultScreen({
    super.key,
    required this.queries,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          // icon: SvgPicture.asset(
          //   "assets/icons/menu4.svg",
          //   color: context.primary,
          //   height: 40,
          // ),
          icon: Image.asset(
            "assets/icons/menuBar.png",
          ),
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
      body: DefaultBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ).copyWith(
            top: 20,
          ),
          child: Column(
            children: [
              // const Gap(10),
              TextFormField(
                decoration: InputDecoration(
                  // hintText: "Tomato, Gari, Sugar, ...",
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 1.4,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 2,
                      color: context.primary,
                    ),
                  ),
                ),
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Health",
                      style: context.titleMedium!.copyWith(
                        color: Colors.red,
                      ),
                    ),
                    icon: const Icon(
                      Icons.arrow_upward_outlined,
                      color: Colors.red,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Popularity",
                      style: context.titleMedium!.copyWith(
                        color: context.tertiary,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Duration",
                      style: context.titleMedium!.copyWith(
                        color: context.tertiary,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(15),
              Expanded(
                child: FutureBuilder(
                  future: RecipeAPIService.getRecipeByIngredients(queries),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data as List;
                      if (data.isNotEmpty) {
                        return GridView.builder(
                          itemCount: snapshot.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            final data = snapshot.data[index];
                            return MealItemCard(
                              id: data["id"] as int,
                              picture: data["image"] as String,
                              foodName: data["title"] as String,
                              type: "Diet",
                              goodness: data["likes"],
                            );
                          },
                        );
                      } else {
                        return Center(
                          child: Text(
                            "No matching",
                            textAlign: TextAlign.center,
                            style: context.titleLarge!.copyWith(
                              color: context.primary,
                            ),
                          ),
                        );
                      }
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
