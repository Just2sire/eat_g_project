import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _ingredientsController = TextEditingController();

  @override
  void dispose() {
    _ingredientsController.dispose();
    super.dispose();
  }

  static const String apiUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?i=';

  Future<dynamic> getRecipes(String ingredients) async {
    final response = await http.get(Uri.parse('$apiUrl$ingredients'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Handle response
    } else {
      throw Exception('Erreur lors de la récupération des recettes');
    }
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
                    controller: _ingredientsController,
                    decoration: InputDecoration(
                      hintText: "Tomato, Gari, Sugar, ...",
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
                          "Enter your ingredients by separating them with a comma (), then click on ",
                      style: TextStyle(
                        color: context.tertiary,
                      ),
                      children: [
                        TextSpan(
                          text: "COOK",
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
                  final results = _ingredientsController.text.trim().split(",");
                    context.push('/results', extra: results);
                  // final ingredients = _ingredientsController.text.trim();
                  // try {
                  //   final results = await getRecipes(ingredients);
                  // } on Exception catch (e) {
                  //   // Handle API errors
                  // }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.primary,
                  fixedSize: const Size(200, 60),
                ),
                child: Text(
                  "COOK",
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
