import 'package:custom_shapes/screens/home/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // showPerformanceOverlay: true,
        // showSemanticsDebugger: true,
        // debugShowMaterialGrid: true,
        title: 'Flutter Custom Shapes',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
