import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';

class ImageCard extends CandylandCard {
  ImageCard({Image image})
      : super(
          child: Container(
            child: image,
            padding: EdgeInsets.all(20),
            color: Colors.grey.shade100,
          ),
        );
}
