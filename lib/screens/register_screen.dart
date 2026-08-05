import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 30),

              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                    color: AppColors.secondary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person_add,
                    color: AppColors.primary,
                    size: 55,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Register to get started",
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 35),

              const CustomTextField(
                hint: "Full Name",
                icon: Icons.person_outline,
              ),

              const SizedBox(height: 18),

              const CustomTextField(
                hint: "Email",
                icon: Icons.email_outlined,
              ),

              const SizedBox(height: 18),

              const CustomTextField(
                hint: "Password",
                icon: Icons.lock_outline,
                obscure: true,
              ),

              const SizedBox(height: 18),

              const CustomTextField(
                hint: "Confirm Password",
                icon: Icons.lock_outline,
                obscure: true,
              ),

              const SizedBox(height: 35),

              PrimaryButton(
                text: "Sign Up",
                onPressed: () {},
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Already have an account?",
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}