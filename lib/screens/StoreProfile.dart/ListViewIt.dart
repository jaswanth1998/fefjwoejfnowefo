import 'package:big_medas_app/screens/StoreProfile.dart/StoreProductsPage.dart';
import 'package:flutter/material.dart';

class ListViewIt extends StatefulWidget {
  @override
  _ListViewItState createState() => _ListViewItState();
}

class _ListViewItState extends State<ListViewIt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreProductsPage(
          title: "Doctor\'s Choice Absorbent Cotton Wool l.P",
          subTitle: "\u20A8 225 / 400Gm'",
        ),
        StoreProductsPage(
          title: "Doctors Choice Cotton",
          subTitle: "\u20A8 110 / 200Gms'",
        ),
        StoreProductsPage(
          title: "Gillette Lemon Lime Foam",
          subTitle: "\u20A8 175 / 196Gm'",
        ),
        // Expanded(child: null),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Container(child: Icon(Icons.shopping_cart_outlined)),
            title: Row(
              children: [
                Text("2 Items"),
                Text(
                  "\u20A8 300",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w600),
                )
              ],
            ),
            subtitle: Text("Le Burger Seigneur"),
            trailing: Image.asset(
              "./assests/images/view_cart.png",
              width: 120,
            ),
            isThreeLine: true,
          ),
        )
      ],
    );
  }
}
