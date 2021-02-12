import 'package:big_medas_app/screens/home/RoundedPic.dart';
import 'package:big_medas_app/screens/home/SearchServiceCard.dart';
import 'package:big_medas_app/screens/home/storeCard.dart';
import 'package:flutter/material.dart';

class SearchService extends StatefulWidget {
  @override
  _SearchServiceState createState() => _SearchServiceState();
}

class _SearchServiceState extends State<SearchService> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
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
                hintText: "Search The Service You Need",
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  right: 20,
                  top: 14,
                  bottom: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,

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

                SearchServiceCard(
                  imgUrl: "./assests/services/s1.jpeg",
                  content: "Architect",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s2.jpeg",
                  content: "Contractor",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s3.jpeg",
                  content: "Designer",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s4.jpeg",
                  content: "Supplier",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s5.jpeg",
                  content: "Plumber",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s6.jpeg",
                  content: "Electrician",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s7.jpeg",
                  content: "Carpenter",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s8.jpeg",
                  content: "Repair",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s9.jpeg",
                  content: "Cleaning",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s10.jpeg",
                  content: "Painter",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s11.jpeg",
                  content: "Catering",
                ),
                SearchServiceCard(
                  imgUrl: "./assests/services/s12.jpeg",
                  content: "Car/Bike",
                )

                // HomeStoreCard(
                //   content: "Architect",
                //   imgUrl: "./assests/images/service1.jpeg",
                // ),
              ]),
        ],
      ),
    );
  }
}
