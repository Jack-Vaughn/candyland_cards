import 'package:flutter/material.dart';
import 'package:candylandcards/DeckView.dart';

final appTitle = 'Candyland Cards';

void main() => runApp(MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appTitle,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: SizedBox.expand(
            child: DeckView(),
          ),
        ),
      ),
    ));
