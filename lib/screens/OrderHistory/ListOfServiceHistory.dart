import 'package:big_medas_app/screens/OrderHistory/serviceHistory.dart';
import 'package:flutter/material.dart';

class ListOfServiceHistory extends StatefulWidget {
  @override
  _ListOfServiceHistoryState createState() => _ListOfServiceHistoryState();
}

class _ListOfServiceHistoryState extends State<ListOfServiceHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ServiceHistory(),
          ServiceHistory(),
          ServiceHistory(),
        ],
      ),
    );
  }
}
