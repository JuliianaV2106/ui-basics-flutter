import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/primary_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Prueba Widgets")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CustomTextField(
                label: "Correo electrónico",
                hint: "Ingresa tu correo",
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                text: "Iniciar sesión",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}