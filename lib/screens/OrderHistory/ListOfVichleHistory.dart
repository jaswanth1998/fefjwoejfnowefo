import 'package:big_medas_app/screens/OrderHistory/VichleHistory.dart';
import 'package:flutter/material.dart';

class ListOfVichleHistory extends StatefulWidget {
  @override
  _ListOfVichleHistoryState createState() => _ListOfVichleHistoryState();
}

class _ListOfVichleHistoryState extends State<ListOfVichleHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          VichileHistory(),
          VichileHistory(),
          VichileHistory(),
        ],
      ),
    );
  }
}
