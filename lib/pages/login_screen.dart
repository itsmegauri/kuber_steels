import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/input_field.dart';
import '../theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light background color
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Centered content
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Welcome Text
                      Text(
                        'Welcome to Kuber Steel Industries',
                        style: TextStyle(
                          color: Colors.black, // Dark color for visibility on light background
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),

                      // Username Input Field
                      CustomInputField(
                        label: 'Username',
                        icon: Icons.person,
                      ),
                      SizedBox(height: 16),

                      // Password Input Field
                      CustomInputField(
                        label: 'Password',
                        icon: Icons.lock,
                        isPassword: true,
                      ),
                      SizedBox(height: 16),

                      // Forgot Password Link
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgot-password');
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(color: Colors.blueAccent), // Accent color for visibility
                          ),
                        ),
                      ),
                      SizedBox(height: 24),

                      // Login Button
                      CustomButton(
                        text: 'LOGIN',
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home'); // Navigate to HomeScreen
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Footer Text at the bottom of the screen
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  Text(
                    'Powered by Polynovators',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'info@polynovators.com',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
