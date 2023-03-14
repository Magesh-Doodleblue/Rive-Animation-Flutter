import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SecondPage")),
      body: const Hero(
        tag: "NewTag",
        child: FlutterLogo(
          style: FlutterLogoStyle.stacked,
          size: 340,
        ),
      ),
    );
  }
}
