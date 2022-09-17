import 'package:flutter/material.dart';
import 'dart:math';
import 'functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YourAPP(),
    );
  }
}

class YourAPP extends StatefulWidget {
  const YourAPP({Key? key}) : super(key: key);

  @override
  State<YourAPP> createState() => _YourAPPState();
}

class _YourAPPState extends State<YourAPP> {
  MaterialColor colorOfTheBoxes = 
    Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('ColoredBoxes'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        children: List.generate(500, (index) {
          colorOfTheBoxes = changeColor();
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: colorOfTheBoxes,
            ),
            child: Center(
              child: Text(
                getRandString(),
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: SizedBox(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                colorOfTheBoxes = changeColor();
              });
            },
            tooltip: 'Change Color',
            child: const Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
