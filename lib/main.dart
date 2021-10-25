import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_profile_example/page/profile_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner in default  flutter project
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange.shade700,
        dividerColor: Colors.black,
      ),

      home: ProfilePage(),
    );
  }
}
