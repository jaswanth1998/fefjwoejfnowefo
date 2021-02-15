import 'package:big_medas_app/screens/StoreProfile.dart/ContactInfo.dart';
import 'package:big_medas_app/screens/StoreProfile.dart/ListViewIt.dart';
import 'package:big_medas_app/screens/StoreProfile.dart/ReviewList.dart';
import 'package:flutter/material.dart';

class ScafFlodStoreView extends StatefulWidget {
  @override
  _ScafFlodStoreViewState createState() => _ScafFlodStoreViewState();
}

class _ScafFlodStoreViewState extends State<ScafFlodStoreView> {
  int showDetails = 0;
  static List<Widget> _widgetOptions1 = <Widget>[
    Container(child: ListViewIt()),
    ReviewListView(),
    ContactInfo()
    // StoreProfile(),
    // DriverProfiel(),
    // DriveScreen(),
    // HomePage(),
    // ServicesPage(),
    // SearchService(),
    // AddAddress(),
    // PaymentPage(),
    // ShowProfile(),
    // StoreView(),
    // AddAddress(),
  ];

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
                Image.asset("./assests/services/fotter.jpg",
                    width: 100, height: 100),
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hoodi Store",
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
                                "15 Produucta",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w600,
                                //     color: Colors.grey),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Address: XXXX",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w600,
                                //     color: Colors.grey,
                                //     fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            "./assests/services/like.jpg",
                            width: 30,
                            height: 30,
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
                            child: Image.asset(
                              "./assests/services/share.png",
                              width: 100,
                            ),
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
                          color: this.showDetails == 0
                              ? Colors.red
                              : Colors.white)),
                  color: this.showDetails == 0
                      ? Color.fromRGBO(181, 44, 94, 1)
                      : Colors.white,
                  onPressed: () => {
                        this.setState(() {
                          this.showDetails = 0;
                        })
                      },
                  child: Text(
                    "Products",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: this.showDetails == 0
                            ? Colors.white
                            : Colors.black),
                  )),
            )),
            Expanded(
                child: FlatButton(
                    color: this.showDetails == 1
                        ? Color.fromRGBO(181, 44, 94, 1)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        side: BorderSide(
                            color: this.showDetails == 1
                                ? Colors.red
                                : Colors.white)),
                    onPressed: () => {
                          this.setState(() {
                            this.showDetails = 1;
                          })
                        },
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.showDetails == 1
                              ? Colors.white
                              : Colors.black),
                    ))),
            Expanded(
                child: FlatButton(
                    color: this.showDetails == 2
                        ? Color.fromRGBO(181, 44, 94, 1)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        side: BorderSide(
                            color: this.showDetails == 2
                                ? Colors.red
                                : Colors.white)),
                    onPressed: () => {
                          this.setState(() {
                            this.showDetails = 2;
                          })
                        },
                    child: Text(
                      "Contacts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.showDetails == 2
                              ? Colors.white
                              : Colors.black),
                    )))
          ],
        ),
      ),
      _widgetOptions1.elementAt(showDetails),
    ]);
  }
}
