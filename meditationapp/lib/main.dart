import 'package:flutter/material.dart';
import 'package:meditationapp/screen/login/startup_screen.dart'; //Miros- No debes incluir lib en tu importacion porque si no no lo acepta
import 'package:meditationapp/common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de meditación',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        fontFamily: "HelveticaNeue",
        scaffoldBackgroundColor: Colors.white, //Fonde del scafold
        appBarTheme: const AppBarTheme(
          elevation:0,
          backgroundColor: Colors.transparent
          ),
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const StartUpScreen(),
    );
  }
}
