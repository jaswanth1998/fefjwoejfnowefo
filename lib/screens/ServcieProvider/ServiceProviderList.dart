import 'package:big_medas_app/screens/CartPage.dart';
import 'package:big_medas_app/screens/DriverScreen/DriveScreen.dart';
import 'package:big_medas_app/screens/DriverScreen/DriverProfile.dart';
import 'package:big_medas_app/screens/ServcieProvider/ServiceProviderCard.dart';
import 'package:big_medas_app/screens/home/AddAddress.dart';
import 'package:big_medas_app/screens/home/AppDropDown.dart';
import 'package:big_medas_app/screens/home/DrawerListView.dart';
import 'package:big_medas_app/screens/home/HomePage.dart';
import 'package:big_medas_app/screens/home/SearchService.dart';
import 'package:big_medas_app/screens/home/ShowProfile.dart';
import 'package:big_medas_app/screens/home/paymentPage.dart';
import 'package:big_medas_app/screens/home/servicesPage.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

class ServiceProviderList extends StatefulWidget {
  @override
  _ServiceProviderListState createState() => _ServiceProviderListState();
}

class _ServiceProviderListState extends State<ServiceProviderList> {
  int _selectedIndex = 2;
  int showIndex = 2;

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
    Container(
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
                    // borderSide:
                    // BorderSide(color: Theme.of(context).primaryColor),
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
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "500 Service Providers",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ServiceProviderCard(),
          ServiceProviderCard(),
          ServiceProviderCard(),
          ServiceProviderCard(),
          ServiceProviderCard(),
        ],
      ),
    ),
    DrawerListView(),
    CartPage(),
    ShowProfile(),
    StoreView(),
    AddAddress(),
    DriverProfiel(),
    DriveScreen(),
    ServiceProviderList(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 30,
                color: Colors.green,
              ),
              SizedBox(
                width: 4,
              ),
              AppDropDown()
            ],
          ),
          backgroundColor: Colors.grey[100],
          // bottom: PreferredSize(
          //     child: Container(
          //       color: Color.fromRGBO(128, 76, 71, 1),
          //       height: 4.0,
          //     ),
          //     preferredSize: Size.fromHeight(4.0)),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    showIndex = 5;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(1.0),
                  child: Icon(
                    Icons.account_box,
                    size: 30,
                    color: showIndex == 5 ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                setState(() {
                  showIndex = 4;
                })
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: showIndex == 4 ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ],
        ),
        body: _widgetOptions.elementAt(showIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.store,
                  color: showIndex == 0 ? Colors.red : Colors.grey),
              label: 'Stores',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_transportation,
                  color: showIndex == 1 ? Colors.red : Colors.grey),
              label: 'Vehicle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service,
                  color: showIndex == 2 ? Colors.red : Colors.grey),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,
                  color: showIndex == 3 ? Colors.red : Colors.grey),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
