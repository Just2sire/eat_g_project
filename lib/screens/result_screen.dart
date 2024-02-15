import 'package:eat_g/data/meal_data.dart';
import 'package:eat_g/models/meal_model.dart';
import 'package:eat_g/utils/build_context_extension.dart';
import 'package:eat_g/widgets/default_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/item_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
                  hintText: "Tomate, Gari, Sucre, ...",
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
                      "Santé",
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
                      "Popularité",
                      style: context.titleMedium!.copyWith(
                        color: context.tertiary,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Durée",
                      style: context.titleMedium!.copyWith(
                        color: context.tertiary,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(15),
              Expanded(
                child: GridView.builder(
                  itemCount: meals.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  // padding: EdgeInsets.symmetric(horizontal: 10,),
                  itemBuilder: (context, index) {
                    final Meal(
                      :foodName,
                      :goodness,
                      :id,
                      :picture,
                      :type,
                    ) = meals[index];
                    return MealItemCard(
                      id: id,
                      picture: picture,
                      foodName: foodName,
                      type: type,
                      goodness: goodness,
                    );
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
