// import 'package:cv/edit_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

String? fullName = 'Dikko Abidemi Olatunji';
String? slackUserName = 'demigod';
String? githubHandle = 'demigod22';
String? myBio =
    '👨‍💻 Flutter Developer | 📚 Political Science Graduate \n🌟 Turning UIs into Stunning Realities\nDikko Abidemi Olatunji, a Flutter developer based in Lagos, Nigeria, combines his recent degree in Political Science from Lagos State University with a passion for creating captivating user interfaces. He\'s known for turning design concepts into user-friendly mobile apps and stays at the forefront of technology trends.Follow his journey in blending politics with technology as he crafts impactful digital solutions.';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
