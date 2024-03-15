import 'package:flutter/material.dart';
import 'package:phase_2_implementation/welcome/welcome.dart';
//import 'package:phase_2_implementation/log_in/log_in.dart';

void main() {
  runApp(const FoodMinder());
}

class FoodMinder extends StatelessWidget {
  const FoodMinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
