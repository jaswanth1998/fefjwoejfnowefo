import 'package:flutter/material.dart';

class RoundedVechicle extends StatefulWidget {
  String contentName;
  String imgUrl;
  RoundedVechicle({this.contentName, this.imgUrl});
  @override
  _RoundedVechicleState createState() =>
      _RoundedVechicleState(contentName: this.contentName, imgUrl: this.imgUrl);
}

class _RoundedVechicleState extends State<RoundedVechicle> {
  String contentName;
  String imgUrl;
  _RoundedVechicleState({this.contentName, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pushNamed(context, '/vScreen')},
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: 3),
                ],
              ),
              child: Image.asset(imgUrl, fit: BoxFit.cover, height: 80)),
          // Container(
          //   width: 75,
          //   height: 75,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //         image:
          //             NetworkImage('https://googleflutter.com/sample_image.jpg'),
          //         fit: BoxFit.fill),
          //   ),
          // ),
          SizedBox(
            height: 5,
          ),
          Text(
            this.contentName,
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
    ;
  }
}
