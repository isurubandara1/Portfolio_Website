import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/Mobile/Mabout.dart';
import 'DeskTop/Home.dart';
import 'Mobile/Mhome.dart';
import 'Mobile/Mservice.dart';
import 'PageRouter.dart';
import 'Secret.dart';
import 'package:device_preview/device_preview.dart';

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
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth > 700) {
//             // Display Desktop version for widths greater than 600
//             return HomePage();
//           } else {
//             // Display Mobile version for widths less than or equal to 600
//             return Mhome();
//           }
//         },
//       ),
//     );
//   }
// }
