import 'package:big_medas_app/screens/StoreProfile.dart/Reveiwcard.dart';
import 'package:flutter/material.dart';

class ReviewListView extends StatefulWidget {
  @override
  _ReviewListStateView createState() => _ReviewListStateView();
}

class _ReviewListStateView extends State<ReviewListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(12),
          child: Text(
            "+ Add Your Review",
            style: TextStyle(
                color: Color.fromRGBO(172, 55, 84, 1),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        ReviewCard(
          name: "Igor Antonovich",
          rating: 4,
          review: '"There is a huge variety of water sports"',
        ),
        ReviewCard(
          name: "carMellta Marsham",
          rating: 5,
          review: '"Recently cruised on Princess line for the first time"',
        ),
        ReviewCard(
          name: "Igor Antonovich",
          rating: 2,
          review: '"There is a huge variety of water sports',
        ),
        ReviewCard(
          name: "Igor Antonovich",
          rating: 4,
          review: '"There is a huge variety of water sports',
        ),
        ReviewCard(
          name: "Igor Antonovich",
          rating: 1,
          review: '"There is a huge variety of water sports',
        ),
        ReviewCard(
          name: "Igor Antonovich",
          rating: 4,
          review: '"There is a huge variety of water sports',
        )
      ],
    )
        // child: ListView(
        //   children: [
        //     Text("hi"),
        //     Text("hi"),

        //   ],
        // ),
        );
  }
}
