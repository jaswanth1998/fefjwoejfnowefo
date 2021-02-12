import 'package:flutter/material.dart';

class DriverProfiel extends StatefulWidget {
  @override
  _DriverProfielState createState() => _DriverProfielState();
}

class _DriverProfielState extends State<DriverProfiel> {
  bool showDetails = true;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Container(
            height: 160.0,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  "./assests/services/userLike.jpeg",
                  fit: BoxFit.cover,
                ), // width: 100, height: 100),
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
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "This is vehicle Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
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
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            "./assests/services/shareIt.jpeg",
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                              color: Color.fromRGBO(241, 79, 90, 1),
                              onPressed: () => {},
                              child: Text(
                                "Call Now",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: FlatButton(
                                color: Color.fromRGBO(254, 241, 0, 1),
                                onPressed: () => {},
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      Container(
        margin: EdgeInsets.all(12),
        height: 40,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: Container(
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(
                          color: this.showDetails ? Colors.red : Colors.white)),
                  color: this.showDetails
                      ? Color.fromRGBO(181, 44, 94, 1)
                      : Colors.white,
                  onPressed: () => {
                        this.setState(() {
                          this.showDetails = true;
                        })
                      },
                  child: Text(
                    "Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: this.showDetails ? Colors.white : Colors.black),
                  )),
            )),
            Expanded(
                child: FlatButton(
                    color: !this.showDetails
                        ? Color.fromRGBO(181, 44, 94, 1)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        side: BorderSide(
                            color:
                                !this.showDetails ? Colors.red : Colors.white)),
                    onPressed: () => {
                          this.setState(() {
                            this.showDetails = false;
                          })
                        },
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )))
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        child: Text(
          "Baisc Details",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Driver Name : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Vehicle Name : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Booking Capacity : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Vehicle Registration Number : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Driver's Total Booking : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Available : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Long Trip Booking : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "Stated Where Can Freely Go : XXXX",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
      Container(
        margin: EdgeInsets.all(8),
        child: Text(
          "Vehicle Photos",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "./assests/services/vehicle.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ))
    ]);
  }
}
