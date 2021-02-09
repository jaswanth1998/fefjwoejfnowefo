import 'package:flutter/material.dart';

class HomeStoreCard extends StatefulWidget {
  String content;
  String imgUrl;
  HomeStoreCard({this.content, this.imgUrl});

  @override
  _StoreCardState createState() =>
      _StoreCardState(content: this.content, imgUrl: this.imgUrl);
}

class _StoreCardState extends State<HomeStoreCard> {
  String content;
  String imgUrl;
  _StoreCardState({this.content, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.29,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            Image.asset(imgUrl, fit: BoxFit.cover, height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.content,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
