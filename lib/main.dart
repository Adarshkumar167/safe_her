import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safe_her/login_page.dart';
// import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeHer',
      home: LoginPage(),
      // home: HomePage(
      //   title: 'Women Safety Device App',
      // ),
    );
  }
}
