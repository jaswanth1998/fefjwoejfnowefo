import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("./assests/services/Maps.jpeg"),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Store Owner Name: XXXXX",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Phone Number: XXXXX",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "WhatsApp Number: XXXXX",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Email ID: XXXXX",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "For complaint Contact At : XXXXX",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
