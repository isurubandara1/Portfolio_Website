import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'PageRouter.dart';
import 'Secret.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: APIKEY,
          authDomain: AUTHDOMAIN,
          projectId: PROJECTID,
          storageBucket: STORAGEBUCKET,
          messagingSenderId: MESSAGEINGSENDERID,
          appId: APPID,
          measurementId: MEASUREMENTID,
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle the error as needed (e.g., show an error message)
  }

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
