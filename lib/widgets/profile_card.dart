import 'package:flutter/material.dart';

import 'profile_info.dart';
import 'statistics_row.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const ProfileInfo(
              image: "assets/images/mariana.jpg",
              name: "Mariana Valenzuela",
              username: "@marianav",
              role: "Diseñadora de Producto",
              description:
                  "Creando experiencias digitales enfocadas en el usuario. Amante del café y del minimalismo.",
              email: "m.val@estudio.com",
              location: "Madrid, ES",
            ),

            const SizedBox(height: 30),

            const StatisticsRow(),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Edit Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}