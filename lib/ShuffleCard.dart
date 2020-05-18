import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';

class ShuffleCard extends CandylandCard {
  ShuffleCard()
      : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 100,
                child: Container(
                  child: Center(
                    child: Text(
                      'Shuffled!',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                  color: Colors.grey.shade400,
                ),
              )
            ],
          ),
        );
}
