import 'package:db_shop/presentation/pages/intro_page/intro_screen.dart';
import 'package:db_shop/presentation/state_management/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Deep Byte",
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const IntroScreen(),
    );
  }
}
