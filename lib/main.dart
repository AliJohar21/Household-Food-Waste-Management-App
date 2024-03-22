import 'package:flutter/material.dart';
import 'package:phase_2_implementation/welcome/welcome.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FoodMinder());
}

class FoodMinder extends StatelessWidget {
  const FoodMinder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SourceCodePro',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF673AB7)),
        useMaterial3: true,
      ),
    );
  }
}
