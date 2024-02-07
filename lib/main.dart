import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/updateProductScreen.dart';

import 'Screens/homeScreen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
