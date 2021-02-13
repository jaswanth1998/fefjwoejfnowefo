import 'package:big_medas_app/screens/home/RoundedPic.dart';
import 'package:big_medas_app/screens/home/storeCard.dart';
import 'package:big_medas_app/screens/stores/StoreCard.dart';
import 'package:flutter/material.dart';

import 'homeGrid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              // controller: controller,
              // focusNode: focusNode,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x4437474F),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Search for store/item",
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  right: 20,
                  top: 14,
                  bottom: 14,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("./assests/images/cursor.jpeg", fit: BoxFit.cover),
            SizedBox(
              height: 15,
            ),
            Text(
              "Departments To Purchase",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromRGBO(243, 243, 243, 1),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Bakery",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Toys an..",
                        imgUrl: "./assests/images/dp5.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Hoodies",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "T-shirts",
                        imgUrl: "./assests/images/dp6.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp1.jpeg",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedPic(
                        contentName: "Person...",
                        imgUrl: "./assests/images/dp2.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Singles",
                        imgUrl: "./assests/images/dp3.jpeg",
                      ),
                      RoundedPic(
                        contentName: "Albums",
                        imgUrl: "./assests/images/dp4.jpeg",
                      ),
                      GestureDetector(
                        onTap: () => {
                          print("i am"),
                          // Navigator.pushNamed(context, '/storeView')
                        },
                        child: Column(
                          children: [
                            Image.asset("./assests/images/viewAll.jpeg",
                                fit: BoxFit.cover, height: 80),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "View All",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //     RoundedPic(),
                  //   ],
                  // ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Best Groceries Stores",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeStoreCard(
                        content: "Store 1",
                        imgUrl: "./assests/images/store1.jpeg"),
                    HomeStoreCard(
                        content: "Store 2",
                        imgUrl: "./assests/images/store2.jpeg"),
                    HomeStoreCard(
                        content: "Store 3",
                        imgUrl: "./assests/images/store3.jpeg"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Best Groceries Stores",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeStoreCard(
                        content: "Store 1",
                        imgUrl: "./assests/images/store1.jpeg"),
                    HomeStoreCard(
                        content: "Store 2",
                        imgUrl: "./assests/images/store2.jpeg"),
                    HomeStoreCard(
                        content: "Store 3",
                        imgUrl: "./assests/images/store3.jpeg"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
