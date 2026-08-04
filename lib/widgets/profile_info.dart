import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String image;
  final String name;
  final String username;
  final String role;
  final String description;
  final String email;
  final String location;

  const ProfileInfo({
    super.key,
    required this.image,
    required this.name,
    required this.username,
    required this.role,
    required this.description,
    required this.email,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CircleAvatar(
          radius: 75,
          backgroundImage: AssetImage(image),
        ),

        const SizedBox(height: 20),

        Text(
          name,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          "$username • $role",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),

        const SizedBox(height: 25),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.email_outlined,
              color: Colors.grey,
            ),

            const SizedBox(width: 8),

            Text(
              email,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(width: 30),

            const Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
            ),

            const SizedBox(width: 8),

            Text(
              location,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

          ],
        )
      ],
    );
  }
}