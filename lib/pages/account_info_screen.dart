import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';

class AccountInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'Account Info',
        showBackButton: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Close Icon aligned to the right
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    _buildInfoField(Icons.person, 'Username', context),
                    SizedBox(height: 12),
                    _buildInfoField(Icons.email, 'Email ID', context),
                    SizedBox(height: 12),
                    _buildInfoField(Icons.phone, 'Mobile No.', context),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Action for logout
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Log out', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        // Action for privacy policy
                      },
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoField(IconData icon, String label, BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
