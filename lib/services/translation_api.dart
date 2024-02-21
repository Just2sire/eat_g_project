import 'dart:convert';

import 'package:http/http.dart' as http;

class TranslationAPI {
  static String uri = "https://libretranslate.com/translate";

  static Future<String> translateFrToEn(String text) async {
    final response = await http.post(Uri.parse(uri),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "q": text,
          "source": "fr",
          "target": "en",
          "format": "text",
          "api_key": ""
        }));

    if (response.statusCode == 200) {
      String res = jsonDecode(response.body)["translatedText"];
      print(res);
      return res; // Handle response
    } else {
      throw Exception('Erreur lors de la récupération des recettes');
    }
  }

  static Future<String> translateEnToFr(String text) async {
    final response = await http.post(Uri.parse(uri),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "q": text,
          "source": "en",
          "target": "fr",
          "format": "text",
          "api_key": ""
        }));

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["translatedText"]; // Handle response
    } else {
      throw Exception('Erreur lors de la récupération des recettes');
    }
  }
}
