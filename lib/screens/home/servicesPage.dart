import 'package:big_medas_app/screens/home/RoundedPic.dart';
import 'package:big_medas_app/screens/home/RoundedVechicle.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Image.asset("./assests/images/cursor.jpeg", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select What Do You Want To Book:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),

                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 3,
                // Generate 100 widgets that display their index in the List.
                children: [
                  // Container(
                  //     decoration: new BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         image: new DecorationImage(
                  //             fit: BoxFit.fill,
                  //             image: new NetworkImage(
                  //                 "./assests/images/service1.jpeg")))),

                  RoundedVechicle(
                    contentName: "",
                    imgUrl: "./assests/images/service1.jpeg",
                  ),
                  RoundedVechicle(
                    contentName: "",
                    imgUrl: "./assests/images/service2.jpeg",
                  ),
                  RoundedVechicle(
                    contentName: "",
                    imgUrl: "./assests/images/service3.jpeg",
                  ),
                  RoundedVechicle(
                    contentName: "",
                    imgUrl: "./assests/images/service4.jpeg",
                  ),
                  RoundedVechicle(
                    contentName: "",
                    imgUrl: "./assests/images/service5.jpeg",
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("./assests/images/service6.jpeg",
                  fit: BoxFit.cover),
            ),
            Container(
              height: 14,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            Image.asset("./assests/images/service7.jpeg", fit: BoxFit.cover),
            Container(
              height: 14,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
