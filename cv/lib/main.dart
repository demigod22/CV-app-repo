// import 'package:cv/edit_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

String? fullName = 'Title';
String? slackUserName = 'demigod';
String? githubHandle = 'demigod22';
String? myBio =
    'demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demdemigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22demigod22igod22';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
