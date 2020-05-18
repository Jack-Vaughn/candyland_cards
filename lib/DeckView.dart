import 'package:flutter/material.dart';
import 'package:candylandcards/CandylandCard.dart';
import 'package:candylandcards/ColorCard.dart';
import 'package:candylandcards/Deck.dart';
import 'package:candylandcards/DoubleColorCard.dart';
import 'package:candylandcards/ImageCard.dart';

class DeckView extends StatefulWidget {
  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<DeckView> {
  Deck deck;
  CandylandCard card;
  double opacity = 1;

  _DeckViewState() {
    List<CandylandCard> cards = generateCards();
    this.deck = Deck(cards: cards);
    card = deck.draw();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey.shade100,
      padding: EdgeInsets.all(0),
      child: AnimatedOpacity(
        child: card,
        opacity: opacity,
        duration: Duration(milliseconds: 200),
      ),
      onPressed: () {
        print('Button pressed');
        setState(() {
          opacity = 0;
        });
        Future.delayed(Duration(milliseconds: 200), () {
          setState(() {
            card = deck.draw();
            opacity = 1;
          });
        });
      },
      onLongPress: () {
        print('Button held');
        setState(() {
          opacity = 0;
        });
        Future.delayed(Duration(milliseconds: 200), () {
          setState(() {
            deck.shuffle();
            card = deck.draw();
            opacity = 1;
          });
        });
      },
    );
  }
}

List<CandylandCard> generateCards() {
  Color purple = Color.fromARGB(255, 153, 51, 153);
  Color yellow = Colors.yellow;
  Color blue = Color.fromARGB(255, 33, 172, 205);
  Color green = Color.fromARGB(255, 0, 157, 0);
  Color red = Colors.red;
  Color orange = Colors.orange;

  List<CandylandCard> cards = List();
  for (Color color in [purple, yellow, blue, green, red, orange]) {
    for (int i = 0; i < 4; i++) {
      cards.add(ColorCard(color: color));
    }
    for (int i = 0; i < 3; i++) {
      cards.add(DoubleColorCard(color: color));
    }
  }

  for (Image image in [
    Image.asset('assets/images/ice_cream.png'),
    Image.asset('assets/images/lollipop.png'),
    Image.asset('assets/images/peanut.png'),
    Image.asset('assets/images/peppermint_candy.png')
  ]) {
    cards.add(ImageCard(image: image));
  }
  return cards;
}
