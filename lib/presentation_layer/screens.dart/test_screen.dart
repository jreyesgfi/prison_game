import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prision_card_game/presentation_layer/widgets/cards/card_widget.dart';
import 'package:prision_card_game/presentation_layer/widgets/cards/hand_widget.dart';

class TestScreen extends ConsumerWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: _TestScreenContent(),
    );
  }
}

class _TestScreenContent extends ConsumerStatefulWidget {
  @override
  _TestScreenContentState createState() => _TestScreenContentState();
}

class _TestScreenContentState extends ConsumerState<_TestScreenContent> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,  // Pushes the children to the bottom
          children: [
            HandWidget(cardIds: [1,2,3,0,3]),
          ],
        ),
      ),
    );
  }
}

