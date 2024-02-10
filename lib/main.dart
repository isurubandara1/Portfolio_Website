import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'Home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Load environment variables from .env
    await dotenv.load();
  } catch (e) {
    print('Error loading .env file: $e');
    // Handle the error as needed (e.g., show an error message)
  }

  if (kIsWeb) {
    try {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: dotenv.env['API_KEY']!,
          authDomain: dotenv.env['AUTH_DOMAIN']!,
          projectId: dotenv.env['PROJECT_ID']!,
          storageBucket: dotenv.env['STORAGE_BUCKET']!,
          messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
          appId: dotenv.env['APP_ID']!,
          measurementId: dotenv.env['MEASUREMENT_ID']!,
        ),
      );
    } catch (e) {
      print('Error initializing Firebase: $e');
      // Handle the error as needed (e.g., show an error message)
    }
  }

  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle the error as needed (e.g., show an error message)
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
