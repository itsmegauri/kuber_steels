import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';
import '../pages/home_screen.dart'; // Home Screen
import '../pages/contact_us.dart'; // Contact Us Page
import '../pages/account_info_screen.dart'; // Account Info Page
import '../customer/customer_selection.dart'; // Customer Selection Page

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'KUBER STEEL INDUSTRIES',
        showBackButton: false,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.business,
                        color: AppColors.primaryColor,
                        size: 40,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Welcome to Kuber Steel Industries',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Your Trusted Partner in Steel Solutions',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildFeatureButton(
                            context,
                            Icons.home,
                            'Home',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                            },
                          ),
                          _buildFeatureButton(
                            context,
                            Icons.headset_mic,
                            'Support',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ContactUsPage()),
                              );
                            },
                          ),
                          _buildFeatureButton(
                            context,
                            Icons.people,
                            'Customers',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CustomerSelectionScreen()),
                              );
                            },
                          ),
                          _buildFeatureButton(
                            context,
                            Icons.person,
                            'Account',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AccountInfoScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build feature buttons
  Widget _buildFeatureButton(BuildContext context, IconData icon, String label, {required VoidCallback onPressed}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.secondaryColor,
          radius: 25,
          child: IconButton(
            icon: Icon(icon, color: Colors.white),
            onPressed: onPressed,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
