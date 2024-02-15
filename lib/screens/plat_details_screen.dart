import 'package:eat_g/data/meal_data.dart';
import 'package:eat_g/models/meal_model.dart';
import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../widgets/default_background_widget.dart';
import '../widgets/detail_card_item.dart';

class PlatDetailsScreen extends StatefulWidget {
  final String id;
  const PlatDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<PlatDetailsScreen> createState() => _PlatDetailsScreenState();
}

class _PlatDetailsScreenState extends State<PlatDetailsScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int curentPageViewIndex = 0;
    final Meal(
      :foodName,
      // :goodness,
      // :picture,
      :type,
    ) = meals[int.parse(widget.id)];
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
      ),
      body: DefaultBackgroundWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                foodName,
                style: context.headlineSmall!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(15),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: SizedBox(
                    width: context.width * 1,
                    height: 180,
                    child: PageView(
                      onPageChanged: (index) {
                        setState(() {
                          curentPageViewIndex = index;
                        });
                        print(curentPageViewIndex);
                      },
                      children: const [
                        DetailCardItem(
                          content: "Card 1",
                        ),
                        DetailCardItem(
                          content: "Card 2",
                        ),
                        DetailCardItem(
                          content: "Card 3",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return PageViewIndicator(
                        isActive: curentPageViewIndex == index ? true : false,
                      );
                    }),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                type,
                textAlign: TextAlign.start,
                style: context.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.primary,
                ),
              ),
            )
          ],
        ),
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
