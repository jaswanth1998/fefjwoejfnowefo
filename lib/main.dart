import 'package:big_medas_app/screens/DriverScreen/DriveScreen.dart';
import 'package:big_medas_app/screens/DriverScreen/DriverProfile.dart';
import 'package:big_medas_app/screens/ScafFlodOfWdigets/AddAddress.dart';
import 'package:big_medas_app/screens/ScafFlodOfWdigets/ScafFlodPaymentPage.dart';
import 'package:big_medas_app/screens/ScafFlodOfWdigets/ScafFoldMyOrders.dart';
import 'package:big_medas_app/screens/ScafFlodOfWdigets/ScafFolfOFCarBooking.dart';
import 'package:big_medas_app/screens/ServcieProvider/ServiceProfile.dart';
import 'package:big_medas_app/screens/ServcieProvider/ServiceProviderList.dart';
import 'package:big_medas_app/screens/StoreProfile.dart/StoreProfile.dart';
import 'package:big_medas_app/screens/WishList/ScafFlodVendorHairing.dart';
import 'package:big_medas_app/screens/WishList/ScagFlodWishList.dart';
import 'package:big_medas_app/screens/WishList/WishList.dart';
import 'package:big_medas_app/screens/home/home.dart';
import 'package:big_medas_app/screens/stores/StoreView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/storeView': (context) => StoreView(),
          '/storeProfile': (context) => StoreProfile(),
          '/vScreen': (context) => DriveScreen(),
          '/driverProfile': (context) => DriverProfiel(),
          '/serviceProvider': (context) => ServiceProviderList(),
          '/serviceProfile': (context) => ServiceProfile(),
          '/wishList': (context) => ScafFlodwishList(),
          '/AddAddress': (context) => ScafFlodManageAddress(),
          '/orderPage': (context) => ScafFlodOrders(),
          '/CarBooking': (context) => ScafFlodOfCarBooking(),
          '/VendorHairing': (context) => ScafFlodVendorHaring(),
          '/paymentPage': (context) => ScafFlodPaymentPage()
        },
        // theme: ThemeData(fontFamily: 'Open_sansregular'),
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: Home()));
    // routes:
    // <String, WidgetBuilder>{
    //   '/storeView': (BuildContext context) => new StoreView(),
    //   // '/wrapper': (BuildContext context) => new Wrapper(),
    //   // '/Home': (BuildContext context) => new Home(),
    //   // '/Doctor': (BuildContext context) => new SeeDoctor(),
    //   // '/Loding': (BuildContext context) => new Loding()
    // };
  }
}
