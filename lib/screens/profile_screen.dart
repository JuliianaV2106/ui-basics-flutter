import 'package:flutter/material.dart';

import '../widgets/profile_card.dart';
import '../widgets/conversations_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [

              ProfileCard(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ConversationsList(),
              ),

              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}