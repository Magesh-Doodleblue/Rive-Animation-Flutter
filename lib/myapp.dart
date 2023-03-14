import 'package:flutter/material.dart';

import 'screens/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      //debugShowMaterialGrid: true,

      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animation Flutter Demo Home Page'),
    );
  }
}
