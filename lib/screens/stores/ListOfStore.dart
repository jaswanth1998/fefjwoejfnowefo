import 'package:big_medas_app/screens/stores/StoreCard.dart';
import 'package:flutter/material.dart';

class ListOfStore extends StatefulWidget {
  @override
  _ListOfStoreState createState() => _ListOfStoreState();
}

class _ListOfStoreState extends State<ListOfStore> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return StoreCard();
        });
  }
}
