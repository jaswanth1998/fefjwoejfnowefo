import 'package:flutter/material.dart';

class SearchServiceCard extends StatefulWidget {
  String imgUrl;
  String content;

  SearchServiceCard({this.imgUrl, this.content});
  @override
  _SearchServiceCardState createState() =>
      _SearchServiceCardState(imgUrl: this.imgUrl, content: this.content);
}

class _SearchServiceCardState extends State<SearchServiceCard> {
  String imgUrl;
  String content;

  _SearchServiceCardState({this.imgUrl, this.content});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/serviceProvider')},
      child: Card(
        elevation: 12,
        child: Column(
          children: [
            Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Center(
                child: Text(
              content,
              style: TextStyle(
                  color: Color.fromRGBO(223, 194, 81, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            ))
          ],
        ),
      ),
    );
  }
}
