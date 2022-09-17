import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      "2s",
      "3s",
      "4s",
      "5s",
      "6s",
      "7s",
      "8s",
      "9s",
      "10s",
      "Js",
      "Qs",
      "Ks",
      "As",
      "2h",
      "3h",
      "4h",
      "5h",
      "6h",
      "7h",
      "8h",
      "9h",
      "10h",
      "Jh",
      "Qh",
      "Kh",
      "Ah",
      "2d",
      "3d",
      "4d",
      "5d",
      "6d",
      "7d",
      "8d",
      "9d",
      "10d",
      "Jd",
      "Qd",
      "Kd",
      "Ad",
      "2c",
      "3c",
      "4c",
      "5c",
      "6c",
      "7c",
      "8c",
      "9c",
      "10c",
      "Jc",
      "Qc",
      "Kc",
      "Ac"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
          backgroundColor: Colors.black45,
          title: const Text('ColoredBoxes'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: List.generate(cards.length, (index) {
            return refresh(cards, index);
          }),
        ),
      ),
    );
  }

  Widget refresh(cards, index) {
    return Container(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Center(
        child: Text(
          cards[index],
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cards = [
    "2s",
    "3s",
    "4s",
    "5s",
    "6s",
    "7s",
    "8s",
    "9s",
    "10s",
    "Js",
    "Qs",
    "Ks",
    "As",
    "2h",
    "3h",
    "4h",
    "5h",
    "6h",
    "7h",
    "8h",
    "9h",
    "10h",
    "Jh",
    "Qh",
    "Kh",
    "Ah",
    "2d",
    "3d",
    "4d",
    "5d",
    "6d",
    "7d",
    "8d",
    "9d",
    "10d",
    "Jd",
    "Qd",
    "Kd",
    "Ad",
    "2c",
    "3c",
    "4c",
    "5c",
    "6c",
    "7c",
    "8c",
    "9c",
    "10c",
    "Jc",
    "Qc",
    "Kc",
    "Ac"
  ];

  // Action that need to be performed when the search bar is there on the appbar
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.abc, color: Colors.white),
      )
    ];
  }

  // what should be there on the left side of the appbar
  @override
  Widget? buildLeading(BuildContext context) {
    return AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    );
  }

  //show the result
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  //suggestions for the search
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = ["9c", "10c", "Jc", "Qc", "Kc", "Ac"];
    return ListView.builder(
      itemCount: suggestion.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.card_giftcard_sharp),
        title: Text(suggestion[index]),
      ),
    );
  }
}
