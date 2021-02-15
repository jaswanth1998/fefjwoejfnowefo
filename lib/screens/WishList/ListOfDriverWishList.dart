import 'package:big_medas_app/screens/DriverScreen/DriverCard.dart';
import 'package:flutter/material.dart';

class ListOfDriverWishList extends StatefulWidget {
  @override
  _ListOfDriverWishListState createState() => _ListOfDriverWishListState();
}

class _ListOfDriverWishListState extends State<ListOfDriverWishList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DriverCard(),
          DriverCard(),
          DriverCard(),
          DriverCard(),
        ],
      ),
    );
  }
}
