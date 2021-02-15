import 'package:flutter/material.dart';

class StoreCard extends StatefulWidget {
  @override
  _StoreCardState createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          {print("i am here"), Navigator.pushNamed(context, '/storeProfile')},
      child: Card(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset("./assests/shop1.png", width: 100, height: 100),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Model Medical Store Name is This",
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Address: Behind Ashoka Garden,Bhopal,MP",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),

                        // style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Distance: 12km away",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                        // style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(width: 50),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            onPressed: () => {},
                            child: Row(
                              children: [
                                Text(
                                  "CALL NOW",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 180, 0, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Ink(
                                  decoration: ShapeDecoration(
                                    color: Color.fromRGBO(255, 180, 0, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.phone,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
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
