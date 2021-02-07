import 'package:flutter/material.dart';

class StoreCard extends StatefulWidget {
  @override
  _StoreCardState createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.margin,
                  color: Colors.black26,
                  size: 80,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Model Medical Store",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Adress is this",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Distamce 2km",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: () => {},
                      child: Text("Call Now"),
                      color: Colors.redAccent,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ListTile(
//       leading: Icon(Icons.school, color: Colors.black26),
//       title: Text("Model Medical Store"),
//       subtitle: Text("Adress is this"),
//       isThreeLine: true,

//     );
