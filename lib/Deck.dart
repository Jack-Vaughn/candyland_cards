import 'dart:math';
import 'package:candylandcards/CandylandCard.dart';
import 'package:candylandcards/InitialCard.dart';
import 'package:candylandcards/ShuffleCard.dart';

class Deck {
  List<CandylandCard> cards;
  int cardCount = 0;
  Random random = Random();

  Deck({this.cards}) {
    print('Deck initialized');
    shuffle();
    cards[0] = InitialCard();
  }

  CandylandCard draw() {
    print('Drawing a card');
    print("Card count: '$cardCount'");
    if (anyCardsLeft()) {
      CandylandCard card = cards[cardCount];
      print("Returning card: '$card'");
      if (cardCount++ == 0) {
        cards.removeAt(0);
      }
      return card;
    } else {
      shuffle();
      return draw();
    }
  }

  bool anyCardsLeft() {
    return cardCount < cards.length;
  }

  void shuffle() {
    print('shuffle');
    cards.shuffle(random);
    cards.insert(0, ShuffleCard());
    cardCount = 0;
  }
}
