import 'package:flutter/material.dart';
import 'conversation_item.dart';

class ConversationsList extends StatelessWidget {
  const ConversationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [

            Text(
              "Recent Conversations",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "See All",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),

          ],
        ),

        const SizedBox(height: 20),

        ConversationItem(
          image: "assets/images/mujer.jpg",
          name: "Luisa Montes",
          message: "¿Te parece si revisamos los diseños?",
          time: "10:24 a.m.",
          status: const Icon(
            Icons.done_all,
            color: Colors.blue,
          ),
        ),

        ConversationItem(
          image: "assets/images/mujer2.jpg",
          name: "Sofía Ramírez",
          message: "¡Gracias por la ayuda!",
          time: "9:18 a.m.",
          status: const CircleAvatar(
            radius: 11,
            backgroundColor: Colors.blue,
            child: Text(
              "2",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),

        ConversationItem(
          image: "assets/images/hombre.jpg",
          name: "Alex Torres",
          message: "Nos vemos mañana.",
          time: "Ayer",
          status: const Icon(
            Icons.done,
            color: Colors.grey,
          ),
        ),

        ConversationItem(
          image: "assets/images/hombre2.jpg",
          name: "David Gómez",
          message: "Perfecto 👍",
          time: "Lun",
          status: const SizedBox(),
        ),
      ],
    );
  }
}