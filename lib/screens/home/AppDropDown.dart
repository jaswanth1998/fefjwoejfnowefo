import 'package:flutter/material.dart';

class AppDropDown extends StatefulWidget {
  @override
  _AppDropDownState createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  String dropdownValue = 'Home';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(color: Colors.transparent),
      value: dropdownValue,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.green,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black, fontSize: 16),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Home', 'Office 1', 'Office 2', 'Office 3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
