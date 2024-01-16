import 'package:flutter/material.dart';
import 'package:tune_flutter/Pages/home_page.dart';
void main() {
  runApp(const Tune());
}

class Tune extends StatelessWidget {
  const Tune({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
