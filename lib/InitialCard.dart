import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';

class InitialCard extends CandylandCard {
  InitialCard()
      : super(
          child: Container(
            color: Colors.grey.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 40,
                  child: Container(),
                ),
                Expanded(
                  flex: 10,
                  child: Center(
                    child: Text(
                      'Tap here to start!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Text(
                    'Press and hold to reshuffle',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Container(),
                ),
              ],
            ),
          ),
        );
}
