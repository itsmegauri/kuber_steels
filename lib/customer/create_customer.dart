import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart'; // Import the custom Header
import '../product/product_page.dart'; // Correct path for ProductPage

class CreateCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'Create New Customer', // Set the title for the header
        showBackButton: false, // Display the hamburger menu instead of the back arrow
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildTextField('Shop Name', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('First Name', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('Last Name', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('Billing Address', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('Shipping Address', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('Mobile No.', isRequired: true),
                  SizedBox(height: 10),
                  _buildTextField('Email ID'),
                  SizedBox(height: 10),
                  _buildTextField('GST No.'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'BACK',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to ProductPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isRequired = false}) {
    return TextField(
      decoration: InputDecoration(
        hintText: isRequired ? 'Enter $label *' : 'Enter $label', // Add asterisk for required fields
        hintStyle: TextStyle(color: Colors.black54), // Lighter color for hint
        filled: true,
        fillColor: AppColors.cardColor, // Background color for input field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      style: TextStyle(color: Colors.black), // Black text for input
    );
  }
}
