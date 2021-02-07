import 'package:big_medas_app/screens/stores/ListOfStore.dart';
import 'package:flutter/material.dart';

class StoreView extends StatefulWidget {
  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
              suffixIcon: Icon(Icons.search),
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
        Expanded(
          child: ListOfStore(),
        )
      ],
    );
    ;
  }
}
