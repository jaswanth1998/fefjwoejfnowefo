import 'package:big_medas_app/screens/home/AddressDropDown.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("./assests/services/selectLocation.jpeg"),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'First Name',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Last Name',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Address',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'City',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Pincode',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'Phone Number',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AddressDropDown(),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: 'State',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text(
                "Proceed",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(185, 58, 69, 1),
                    fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
