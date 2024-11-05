import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';

class OrderAngleScreen extends StatelessWidget {
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
            Text(
              'Order for Mr. Gaurav,',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'ORDER FOR ANGLE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
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

  Widget _buildDropdownField(String label) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
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
        labelStyle: TextStyle(color: Colors.white),
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
        _buildActionButton(context, 'ADD', Colors.green, () {}),
        _buildActionButton(context, 'PREVIEW', Colors.blue, () {}),
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
