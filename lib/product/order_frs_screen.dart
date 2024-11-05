import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';

class OrderFRSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        title: 'KUBER STEEL INDUSTRIES',
        showBackButton: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            _buildDropdownField('Item Name*'),
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

  // Helper method to create a dropdown field
  Widget _buildDropdownField(String label) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: AppColors.cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      items: [
        DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
        DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
        // Add more options as needed
      ],
      onChanged: (value) {
        // Handle dropdown selection change
      },
      style: TextStyle(color: Colors.black),
    );
  }

  // Helper method to create an input field
  Widget _buildInputField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: AppColors.cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      style: TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
    );
  }

  // Helper method to create action buttons (Add, Preview, Cancel)
  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle Add action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'ADD',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle Preview action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'PREVIEW',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'CANCEL',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
