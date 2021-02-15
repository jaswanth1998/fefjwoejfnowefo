import 'package:big_medas_app/screens/OrderHistory/StoreHistory.dart';
import 'package:flutter/material.dart';

class ListOfHistory extends StatefulWidget {
  @override
  _ListOfHistoryState createState() => _ListOfHistoryState();
}

class _ListOfHistoryState extends State<ListOfHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StoreHistory(),
          StoreHistory(),
          StoreHistory(),
        ],
      ),
    );
  }
}
