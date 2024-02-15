import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 30,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/fruit_bg.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            Column(
              children: [
                SizedBox(
                  // width: context.width * ,
                  child: TextFormField(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: context.width * 0.75,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "Entrez vos ingrédients en les séparant par une virgule (,) puis cliquer sur ",
                      style: TextStyle(
                        color: context.tertiary,
                      ),
                      children: [
                        TextSpan(
                          text: "PREPARER",
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: context.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.push("/result");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.primary,
                  fixedSize: const Size(200, 60),
                ),
                child: Text(
                  "PREPARER",
                  style: context.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
