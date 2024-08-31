import 'package:flutter/material.dart';
import 'package:prision_card_game/presentation_layer/widgets/header_footer/bottom_navigation.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget child;

  const ScreenWrapper({super.key, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}