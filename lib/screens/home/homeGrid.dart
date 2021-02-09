import 'package:flutter/material.dart';

import 'RoundedPic.dart';

class HomeGrid extends StatefulWidget {
  @override
  _HomeGridState createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 4,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(16, (index) {
        // return RoundedPic();
      }),
    );
  }
}
