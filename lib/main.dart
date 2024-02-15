import 'package:eat_g/themes/light_theme.dart';
import 'package:eat_g/routes/routes.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.light,
      routerConfig: routes,
    );
  }
}