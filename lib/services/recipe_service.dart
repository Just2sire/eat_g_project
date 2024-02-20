import 'dart:convert';
// import 'package:eat_g/services/translation_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class RecipeAPIService {

  static String? apiKey = dotenv.env['SPOONACULAR_API_KEY'];

  static String baseUrl = "https://api.spoonacular.com/recipes";

  static Future<dynamic> getRecipeByIngredients(List<String> queries) async {
    String query = queries.join(",+");

    // query = await TranslationAPI.translateFrToEn(query);
    // print(query);

    String uri = "$baseUrl/findByIngredients?ingredients=$query&apiKey=$apiKey&number=30";

    final response = await http.get(Uri.parse(uri), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Handle response
    } else {
      throw Exception(
        'Error when fetching data',
      );
    }
  }

  static Future<dynamic> getRecipeDetails(int id) async {
    String uri = "$baseUrl/$id/information?includeNutrition=false&apiKey=$apiKey";

    final response = await http.get(Uri.parse(uri), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Handle response
    } else {
      throw Exception(
        'Error when fetching data',
      );
    }
  }
}
