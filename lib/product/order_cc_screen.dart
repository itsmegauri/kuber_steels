import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';
import 'add_to_cart.dart';  // Import the AddToCartScreen

class OrderCCScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'KUBER STEEL INDUSTRIES',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Open drawer or other actions
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Navigate to cart page or other actions
            },
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order for Mr. Gaurav,',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Darker text color
              ),
            ),
            SizedBox(height: 16),
            Text(
              'ORDER FOR CC',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Darker text color
              ),
            ),
            SizedBox(height: 20),
            _buildDropdownField('Brand*'),
            SizedBox(height: 10),
            _buildDropdownField('Colour*'),
            SizedBox(height: 10),
            _buildDropdownField('Thickness*'),
            SizedBox(height: 10),
            _buildInputField('Length*'),
            SizedBox(height: 10),
            _buildInputField('Qty*'),
            SizedBox(height: 10),
            _buildInputField('Price*'),
            SizedBox(height: 20),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600), // Darker text
        filled: true,
        fillColor: AppColors.cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: ['Option 1', 'Option 2', 'Option 3']
          .map((option) => DropdownMenuItem(
        value: option,
        child: Text(option),
      ))
          .toList(),
      onChanged: (value) {},
      style: TextStyle(color: Colors.black),
    );
  }

  Widget _buildInputField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600), // Darker text
        filled: true,
        fillColor: AppColors.cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      style: TextStyle(color: Colors.black),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildActionButton(context, 'ADD', AppColors.primaryColor, () {
          // Add to cart action
        }),
        _buildActionButton(context, 'PREVIEW', AppColors.secondaryColor, () {
          // Navigate to AddToCartScreen when "Preview" is clicked
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddToCartScreen()),
          );
        }),
        _buildActionButton(context, 'PRODUCT LIST', Colors.orange, () {
          Navigator.pop(context);
        }),
        _buildActionButton(context, 'CANCEL', Colors.red, () {
          Navigator.pop(context);
        }),
      ],
    );
  }

  Widget _buildActionButton(
      BuildContext context, String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
