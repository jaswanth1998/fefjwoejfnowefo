import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your Cart",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                  color: Colors.red[600]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              './assests/images/CartIt.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    child: TextField(
                  style: TextStyle(
                      fontSize: 12.0, height: 1.0, color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Coupon code',
                  ),
                )
                    //     child: TextFormField(
                    //   decoration: new InputDecoration(
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide:
                    //             BorderSide(color: Colors.grey[400], width: 1.0),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderSide:
                    //             BorderSide(color: Colors.grey[400], width: 1.0),
                    //       ),
                    //       hintText: 'Coupon Code',
                    //       hintStyle: TextStyle(
                    //           color: Colors.grey[500],
                    //           fontWeight: FontWeight.w800)),
                    // )
                    ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromRGBO(0, 206, 209, 1),
                  )),
                  child: FlatButton(
                      onPressed: null,
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 206, 209, 1),
                            fontWeight: FontWeight.w800),
                      )),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey[400])),
          ),
          Container(
            margin: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(" \u20A8 70.00",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(" \u20A8 0.00",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tax",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(" \u20A8 0.00",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(" \u20A8 0.00",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(" \u20A8 70.00",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey[400])),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: FlatButton(
                color: Color.fromRGBO(244, 66, 54, 1),
                onPressed: () => {
// paymentPage
                      Navigator.pushNamed(context, '/paymentPage')
                    },
                child: Text("Checkout",
                    style: TextStyle(
                      color: Colors.white,
                    ))),
          )
        ],
      ),
    );
  }
}
