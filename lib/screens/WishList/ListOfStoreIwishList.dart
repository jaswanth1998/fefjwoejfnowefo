import 'package:big_medas_app/screens/stores/StoreCard.dart';
import 'package:flutter/material.dart';

class ListOfStoreWishList extends StatefulWidget {
  @override
  _ListOfStoreWishListState createState() => _ListOfStoreWishListState();
}

class _ListOfStoreWishListState extends State<ListOfStoreWishList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StoreCard(),
          StoreCard(),
          StoreCard(),
          StoreCard(),
        ],
      ),
    );
  }
}
