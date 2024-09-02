import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prision_card_game/presentation_layer/widgets/cards/card_widget.dart';

class HandWidget extends ConsumerWidget {
  final List<int> cardIds;
  const HandWidget({
    super.key,
    required this.cardIds,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: _HandWidgetContent(cardIds: cardIds),
    );
  }
}

class _HandWidgetContent extends ConsumerStatefulWidget {
  final List<int> cardIds;

  const _HandWidgetContent({required this.cardIds});

  @override
  _HandWidgetContentState createState() => _HandWidgetContentState();
}

class _HandWidgetContentState extends ConsumerState<_HandWidgetContent>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    
    List<Widget> cardWidgets = widget.cardIds.map((id) {
      return CardWidget(cardId: id);
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: cardWidgets, 
      ),
    );
  }
}
