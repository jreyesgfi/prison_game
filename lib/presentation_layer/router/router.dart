import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prision_card_game/presentation_layer/screens.dart/screen_wrapper.dart';
import 'package:prision_card_game/presentation_layer/screens.dart/test_screend.dart';
final GoRouter router = GoRouter(
  initialLocation: '/test',
  routes: [
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) => ScreenWrapper(child: child),
      routes: [
        GoRoute(
          path: '/test',
          name: 'test',
          pageBuilder: (context, state) =>
              MaterialPage(key: state.pageKey, child: TestScreen()),
        ),
        // GoRoute(
        //   path: '/training',
        //   name: 'training',
        //   pageBuilder: (context, state) =>
        //       MaterialPage(key: state.pageKey, child: TrainingScreen()),
        // ),
        // GoRoute(
        //   path: '/report',
        //   name: 'report',
        //   pageBuilder: (context, state) =>
        //       MaterialPage(key: state.pageKey, child: ReportScreen()),
        // ),
      ],
    ),
  ],
);
