import 'package:flutter/material.dart';

class CarBooking extends StatefulWidget {
  @override
  _CarBookingState createState() => _CarBookingState();
}

class _CarBookingState extends State<CarBooking> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
              "Book Now",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                  color: Colors.red[600]),
            )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Select Date',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Select Time',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Pickup From',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // minLines: 3,
              // maxLines: 4,
              decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),
                  hintText: 'Drop Location',
                  hintStyle: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800)),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(9.0),
                    side: BorderSide(color: Colors.red, width: 3.0)),
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                onPressed: null,
                child: Text("Book Now",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        color: Colors.red[600]))),
            SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Text("Total Distance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Text("XXXX",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Text("Total Cost",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                  child: Text("XXXX",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(9.0),
                    side: BorderSide(color: Colors.red, width: 3.0)),
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                onPressed: null,
                child: Text("Confirm Booking",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        color: Colors.red[600]))),
          ],
        ),
      ),
    );
  }
}
