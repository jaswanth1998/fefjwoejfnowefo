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
