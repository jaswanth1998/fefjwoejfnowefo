import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class RoundedPic extends StatefulWidget {
  String contentName;
  String imgUrl;
  RoundedPic({this.contentName, this.imgUrl});
  @override
  _RoundedPicState createState() =>
      _RoundedPicState(contentName: this.contentName, imgUrl: this.imgUrl);
}

class _RoundedPicState extends State<RoundedPic> {
  String contentName;
  String imgUrl;
  _RoundedPicState({this.contentName, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, '/storeView')
        // Fluttertoast.showToast(
        //   msg: 'Clicked on ${contentName}',
        //   toastLength: Toast.LENGTH_SHORT,
        //   gravity: ToastGravity.BOTTOM,

        // )
      },
      child: Column(
        children: [
          Image.asset(imgUrl, fit: BoxFit.cover, height: 80),
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
  }
}
