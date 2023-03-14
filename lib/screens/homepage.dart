import 'package:animationproject/screens/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 300,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: isSelected ? Colors.amber : Colors.white,
                width: isSelected ? 200 : 100,
                height: isSelected ? 200 : 100,
                curve: Curves.decelerate,
                child: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ));
              },
              child: const Hero(
                tag: "NewTag",
                child: FlutterLogo(
                  style: FlutterLogoStyle.stacked,
                  size: 140,
                ),
              ),
            ),
          ),
          const RiveAnimation.network(
            'https://cdn.rive.app/animations/vehicles.riv',
          )
        ],
      ),
    );
  }
}
