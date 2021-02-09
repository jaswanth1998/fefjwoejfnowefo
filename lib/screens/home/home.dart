import 'package:big_medas_app/screens/home/AppDrawer.dart';
import 'package:big_medas_app/screens/home/AppDropDown.dart';
import 'package:big_medas_app/screens/home/HomePage.dart';
import 'package:big_medas_app/screens/stores/ListOfStore.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    StoreView(),
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    StoreView(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: AppDrawer(),

      appBar: AppBar(
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
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        bottom: PreferredSize(
            child: Container(
              color: Color.fromRGBO(128, 76, 71, 1),
              height: 4.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                Image.asset("./assests/images/action1.jpeg", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                Image.asset("./assests/images/action2.jpeg", fit: BoxFit.cover),
          ),
        ],
      ),
      body: HomePage(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.store, color: Colors.red),
      //       label: 'Stores',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.emoji_transportation, color: Colors.grey),
      //       label: 'Vehicle',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_repair_service, color: Colors.grey),
      //       label: 'Services',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle, color: Colors.grey),
      //       label: "Profile",
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.red,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
