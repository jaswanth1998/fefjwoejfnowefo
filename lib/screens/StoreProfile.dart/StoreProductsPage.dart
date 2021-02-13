import 'package:flutter/material.dart';

class StoreProductsPage extends StatefulWidget {
  String title;
  String subTitle;
  StoreProductsPage({this.title, this.subTitle});

  @override
  _StoreProductsPageState createState() =>
      _StoreProductsPageState(title: this.title, subTitle: this.subTitle);
}

class _StoreProductsPageState extends State<StoreProductsPage> {
  String title;
  String subTitle;
  _StoreProductsPageState({this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          child: Image.asset(
            "./assests/services/storeCard.jpg",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(this.title),
        subtitle: Text(this.subTitle),
        trailing: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.green)),
          onPressed: () => {},
          child: Text(
            "+ ADD",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.green),
          ),
        ),
        isThreeLine: true,
      ),
    );
  }
}
