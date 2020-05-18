import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';

class DoubleColorCard extends CandylandCard {
  DoubleColorCard({Color color})
      : super(
          child: Column(
            children: [
              Expanded(
                flex: 47,
                child: Container(
                  color: color,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.grey.shade100,
                ),
              ),
              Expanded(
                flex: 47,
                child: Container(
                  color: color,
                ),
              ),
            ],
          ),
        );
}
