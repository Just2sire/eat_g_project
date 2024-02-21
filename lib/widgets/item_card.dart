import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MealItemCard extends StatelessWidget {
  final int id;
  final String picture;
  final String foodName;
  final String type;
  final int goodness;
  const MealItemCard({
    super.key,
    required this.id,
    required this.picture,
    required this.foodName,
    required this.type,
    required this.goodness,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 6,
      ),
      // clipBehavior: ,
      child: SizedBox(
        width: context.width * 0.4,
        height: 200,
        child: Row(
          children: [
            Image.network(
              picture,
              width: context.width * 0.18,
            ),
            Expanded(
              child: Container(
                // width: context.width * 0.2,
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      foodName.length > 13
                          ? "${foodName.substring(0, 13)}.."
                          : foodName,
                      style: context.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Type: ",
                            style: context.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: type.length > 9
                                    ? "${type.substring(0, 9)} ..."
                                    : type,
                                style: context.bodyMedium!.copyWith(
                                  color: context.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(3),
                        RichText(
                          text: TextSpan(
                            text: "Likes: ",
                            style: context.bodyMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "$goodness 👍",
                                style: context.bodyMedium!.copyWith(
                                  color: goodness > 10
                                      ? context.tertiary
                                      : context.surface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        context.push(
                          "/details/$id",
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: Size(context.width * 0.19, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Plus",
                        style: context.titleMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
