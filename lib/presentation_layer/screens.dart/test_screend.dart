import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class _TestScreenContentState extends ConsumerState<_TestScreenContent>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          // Center the box within the SafeArea
          child: Container(
            width: 200, // Fixed width of 200 pixels
            height: 100, // Fixed height of 100 pixels
            color: theme.primaryColor, // Use the primary color from the theme
            alignment:
                Alignment.center, // Align text to the center of the container
            child: const Text(
              'TestWidget',
              style: TextStyle(
                color: Colors
                    .white, // Ensuring the text is visible on the primary color background
                fontSize: 16, // Optional: Adjust text size
              ),
            ),
          ),
        ),
      ),
    );
  }
}
