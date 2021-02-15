import 'package:big_medas_app/screens/home/HomePage.dart';
import 'package:big_medas_app/screens/home/SearchService.dart';
import 'package:big_medas_app/screens/home/ShowProfile.dart';
import 'package:big_medas_app/screens/home/paymentPage.dart';
import 'package:big_medas_app/screens/home/servicesPage.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

import 'AddAddress.dart';

class DrawerListView extends StatefulWidget {
  @override
  _DrawerListViewState createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int _selectedIndex = 0;
  int showIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      showIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ServicesPage(),
    SearchService(),
    DrawerListView(),
    PaymentPage(),
    ShowProfile(),
    StoreView(),
    AddAddress(),
    // DriverProfiel(),
    // DriveScreen(),
    // ServiceProviderList(),
    // ScafflodServiceProfile(),
    // OrderHistory(),
    // WishList(),
    // VendorHiring(),
    // CarBooking(),
    // CartPage(),
    // AddAddress(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Image.asset("./assests/services/profilePic.jpeg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Profile Setting",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/AddAddress')},
            //  orderPage

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Manage Address",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/wishList')},
            //  AddAddress
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Wishlist",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/orderPage')},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "My Orders/Bookings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Share APP",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "T/C",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Refund Policy",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
