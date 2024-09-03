import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prision_card_game/domain_layer/entities/core_entities.dart';
import 'package:prision_card_game/infrastructure_layer/repository_impl/card_repository.dart';
import 'package:prision_card_game/presentation_layer/widgets/common/buttons/custom_icon_button.dart';

class CardWidget extends StatefulWidget {
  final int cardId;

  const CardWidget({super.key, required this.cardId});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isSelected = false; // State to track if the card is selected

  void _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    CardEntity? cardData = CardRepository.getCardById(widget.cardId);
    return Stack(alignment: Alignment.bottomCenter, children: [
        AnimatedContainer(
 duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
          alignment: Alignment.bottomCenter,
          width: _isSelected ? 300 : 150,
          height: _isSelected ? 430 : 240,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.red, width: 2))),
        ),
      GestureDetector(
        onTap: _toggleSelected, // Toggle the selection state on tap
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: _isSelected ? 250 : 150,
          height: _isSelected ? 400 : 240,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cardData != null
                  ? cardData.imagePath
                  : "assets/images/reverse.webp"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: theme.primaryColor,
                offset: const Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: _buildCardContent(cardData),
        ),
      ),
      if (_isSelected) ..._buildButtons(theme),
    ]);
  }

  Widget _buildCardContent(CardEntity? cardData) {
    if (cardData == null) return Container();

    return Padding(
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
    );
  }

  List<Widget> _buildButtons(ThemeData theme) {
    // Placeholder for icons, replace with actual icons as needed
    IconData icon1 = Icons.check; // Example icon
    IconData icon2 = Icons.close; // Example icon

    return [
      Positioned(
        top: 0,
        left: 0,
        child: CustomIconButton(
          onTap: () {}, // Define what happens when this button is tapped
          icon: icon1,
          backgroundColor: theme.primaryColor,
          iconColor: Colors.white,
          size: 50,
        ),
      ),
      Positioned(
        top: 0,
        right: 0,
        child: CustomIconButton(
          onTap: () {}, // Define what happens when this button is tapped
          icon: icon2,
          backgroundColor: theme.secondaryHeaderColor,
          iconColor: Colors.white,
          size: 50,
        ),
      ),
    ];
  }
}
