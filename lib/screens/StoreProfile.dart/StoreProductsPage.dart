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
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset(
              "./assests/services/storeCard.jpg",
              height: 80,
              width: 80,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title),
                  Text(this.subTitle),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.green)),
                onPressed: () => {},
                child: Text(
                  "+ ADD",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.green),
                ),
              ),
            ),
            SizedBox(width: 5),
          ],
        )

        // child: ListTile(
        //   leading: Container(
        //     height: 100,
        //     width: 70,
        //     child: Image.asset(
        //       "./assests/services/storeCard.jpg",
        //     ),
        //   ),
        //   title: Text(this.title),
        //   subtitle: Text(this.subTitle),
        //   trailing: FlatButton(
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(18.0),
        //         side: BorderSide(color: Colors.green)),
        //     onPressed: () => {},
        //     child: Text(
        //       "+ ADD",
        //       style: TextStyle(fontWeight: FontWeight.w800, color: Colors.green),
        //     ),
        //   ),
        //   isThreeLine: true,
        // ),
        );
  }
}
