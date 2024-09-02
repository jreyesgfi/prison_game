import 'package:prision_card_game/domain_layer/entities/core_entities.dart';

class CardRepository {
  static final Map<int, CardEntity> _cards = {
    1: CardEntity(id:1, title: 'Title', description: 'Example description of a card',imagePath: "assets/images/card1.png", actions: []),
    2: CardEntity(id:2, title: 'Title', description: 'Example description of a card',imagePath: 'assets/images/card2.png', actions: []),
    3: CardEntity(id:3, title: 'Title', description: 'Example description of a card',imagePath: 'assets/images/card3.png', actions: []),
  
  };

  static CardEntity? getCardById(int id) {
    return _cards[id];
  }
}