import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  SingingCharacter _character = SingingCharacter.lafayette;
  bool radioValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        children: [
          Text(
            "Payment method",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Radio(
                value: false,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(() {
                    this.radioValue = !this.radioValue;
                  });
                },
              ),
              Text("Cash On delivery")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Order",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
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
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Text(" \u20A8 70.00",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              hintText: 'Order Note',
            ),
            minLines:
                3, // any number you need (It works as the rows for the textarea)
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          SizedBox(
            height: 8,
          ),
          FlatButton(
              color: Color.fromRGBO(244, 66, 54, 1),
              onPressed: () => {},
              child: Text("Continue",
                  style: TextStyle(
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}
