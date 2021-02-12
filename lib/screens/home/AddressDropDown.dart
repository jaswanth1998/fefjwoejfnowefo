import 'package:flutter/material.dart';

class AddressDropDown extends StatefulWidget {
  @override
  _AddressDropDownState createState() => _AddressDropDownState();
}

class _AddressDropDownState extends State<AddressDropDown> {
  String dropdownValue = 'Country';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      underline: Container(height: 2, color: Colors.grey),
      value: dropdownValue,
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.grey,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black, fontSize: 16),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Country', 'India', 'Us']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
