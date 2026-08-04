import 'package:flutter/material.dart';
import 'widgets/conversation_item.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ConversationItem(
              image: "assets/images/javier.jpg",
              name: "Javier Montes",
              message: "¿Te parece si revisamos los diseños?",
              time: "10:24 a.m.",
              status: const Icon(
                Icons.done_all,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}