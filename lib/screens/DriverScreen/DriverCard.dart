import 'package:flutter/material.dart';

class DriverCard extends StatefulWidget {
  @override
  _DriverCardState createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/driverProfile')},
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Container(
            height: 130.0,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("./assests/services/driverLogo.png",
                    width: 100, height: 100),
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This is Driver Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "This is vehicle Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Distance 1Km",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                      FlatButton(
                          minWidth: 120,
                          color: Color.fromRGBO(241, 79, 90, 1),
                          onPressed: () => {},
                          child: Text(
                            "Call Now",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
