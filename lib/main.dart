import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(7, 94, 84, 1),
        secondaryHeaderColor: const Color.fromRGBO(37, 211, 102, 1),
        indicatorColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppHome(),
    );
  }
}
