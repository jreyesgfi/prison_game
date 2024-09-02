import 'package:flutter/material.dart';
import 'package:prision_card_game/domain_layer/entities/core_entities.dart';
import 'package:prision_card_game/infrastructure_layer/repository_impl/card_repository.dart';

class CardWidget extends StatelessWidget {
  final int cardId;
  final String cardBackImagePath = "assets/images/reverse.webp";  // Path to the card back image

  const CardWidget({super.key, required this.cardId});

  @override
  Widget build(BuildContext context) {
    CardEntity? cardData = CardRepository.getCardById(cardId);
    print("Id: ${cardData?.id}, Path: ${cardData?.imagePath}");
    print("Path: ${cardData?.imagePath}");

    return 
    
    Container(
      width: 150,
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(cardData != null ? cardData.imagePath : cardBackImagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: cardData == null ? 
        Container()
        :Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                cardData.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
              Text(
                cardData.description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}