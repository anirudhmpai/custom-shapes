import 'package:custom_shapes/screens/shapes/shapes.dart';
import 'package:custom_shapes/screens/slider/slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShapesScreen(),
                    ));
              },
              icon: const Icon(Icons.shape_line_sharp)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SliderScreen(),
                    ));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: Container(),
    ));
  }
}
