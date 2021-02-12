import 'package:big_medas_app/screens/DriverScreen/DriverCard.dart';
import 'package:big_medas_app/screens/DriverScreen/DriverDropDown.dart';
import 'package:flutter/material.dart';

class DriveScreen extends StatefulWidget {
  @override
  _DriveScreenState createState() => _DriveScreenState();
}

class _DriveScreenState extends State<DriveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: ListView(
        children: [
          TextField(
            // controller: controller,
            // focusNode: focusNode,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x4437474F),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search By Driver's Name",
              contentPadding: const EdgeInsets.only(
                left: 16,
                right: 20,
                top: 14,
                bottom: 14,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "200 Drivers Are Near you",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 40,
              ),
              Flexible(child: DriverDropDown())
            ],
          ),
          SizedBox(
            height: 10,
          ),
          DriverCard(),
          DriverCard(),
          DriverCard(),
          DriverCard(),
        ],
      ),
    );
  }
}
