import 'package:flutter/material.dart';
import 'package:prision_card_game/app.dart';
import 'package:prision_card_game/infrastructure_layer/config/local_database_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Local Database
  await _initializeDatabase();

  //Run the App
  runApp(const MyApp());
}

Future<void> _initializeDatabase() async {
  try {
    // Access the database instance to trigger the initialization
    await DatabaseHelper().database;
    debugPrint("Local database initialized successfully.");
  } catch (e) {
    debugPrint("Failed to initialize the local database: $e");
  }
}

