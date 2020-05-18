import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';

class ColorCard extends CandylandCard {
  ColorCard({Color color})
      : super(
          child: Container(
            color: color,
          ),
        );
}
