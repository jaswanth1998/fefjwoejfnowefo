import 'package:flutter/material.dart';

class DriverDropDown extends StatefulWidget {
  @override
  _DriverDropDownState createState() => _DriverDropDownState();
}

class _DriverDropDownState extends State<DriverDropDown> {
  String dropdownValue = "Select By Vehicle";
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
      items: <String>['Select By Vehicle', 'Vehicle 1', 'Vehicle 2']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
