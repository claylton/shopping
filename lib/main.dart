import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs_page.dart';
import 'package:shopping/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: const DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}
